use productdb;
show databases;
create table products(
product_id int primary key,
product_name varchar(40),
price int
);
desc products;
alter table products add column stock int;
desc products;
alter table products change price price_unit int;
desc products;
alter table products modify price_unit varchar(40);
insert into products(product_id,product_name,price_unit,stock)values
(1,'soap','RS150',100),
(2,'Note','RS140',50),
(3,'Nuts','RS140',140),
(4,'Pencil','RS120',30);
select * from products;
update products set product_name = 'pens' where product_id=4;
select * from products;
delete from products where product_id=2;
select * from products; 