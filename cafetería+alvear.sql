drop database starbucks;
CREATE DATABASE starbucks;
use starbucks;

create table productos (
SKU int not null auto_increment primary key,
product_name varchar (50) not null,
product_category varchar (50) not null,
due_date date null,
description varchar (80) not null
);

-- insert into productos (product_name,category,due_date) values ('capuchino','frios');

create table clientes (
id_customer int not null auto_increment primary key,
first_name varchar (50) not null,
last_name varchar (50) not null,
mail varchar (50) not null,
phone_number int null,
age int null
);


-- insert into clientes (first_name,last_name,mail) values ('simon','alvear','simalv@hotmail.com');


create table proveedores (
id_proveedor int not null auto_increment primary key,
first_name varchar (50) not null,
mail varchar (50) not null,
phone_number int not null,
id_input int not null,
category_supplier varchar (50) not null
);

-- insert into proveedores (first_name,last_name,mail) values ('alexandra','urra','aleurr@hotmail.com');


create table sucursales (
id_store int not null auto_increment primary key,
location varchar (50) not null,
transaction_id INT not null,
id_workers int not null,
product_name varchar (50) not null,
supplies varchar (50) not null,
promotion varchar (50) not null
);

-- insert into table (location,product_name,supplies,promotion) values ('mall plaza tobalaba','expresso','leche,expresso doble');


create table ventas (
transaction_id int not null auto_increment primary key,
price int not null,
total_price int not null,
product_quantity int not null,
sku int not null,
id_customer int not null,
id_store int not null,
product_category varchar (50)not null,
product_name varchar (50)not null,
foreign key (sku) references productos (sku),
foreign key (id_customer) references clientes (id_customer),
foreign key (id_store) references sucursales (id_store)
);

-- insert into ventas (price,total_price,product_quantity,sku,product_category,prodocut_name) values ('3990','3990','1','sk_12345','caliente',capuchino vainilla);