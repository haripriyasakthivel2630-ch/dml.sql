use productdb;
show tables;
CREATE TABLES orders01(
id varchar(30),
 product_name varchar(100),
quality int,
price int
);
insert into orders01(id,product_name,quality,price)values
(101,'face wash',400,230),
(102,'face cream',500,150),
(103,'Lipliner',230,120),
(104,'sun cream',450,160);
desc orders01;
select * from orders01;


