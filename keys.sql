use swiggy;

select *from Employees;
select *from customers;

select * from orders;
drop table orders;

create table orders(
[Order_id] int primary key ,
[name] varchar(30) unique not null,
[age] int check (age between 18 and 60),
[email] varchar(30) Default 'usermail',
[address] varchar(60) not null,
[contact] varchar(10) unique not null,
[ordred] varchar(50),
[Customer_Id] int FOREIGN key references customers(id)
);
--adding composit key
create table orders(
[Order_id] int ,
[name] varchar(30) unique not null,
[age] int check (age between 18 and 60),
[email] varchar(30) Default 'usermail',
[address] varchar(60) not null,
[contact] varchar(10) unique not null,
[ordred] varchar(50),
);
--adding composit key
alter table orders
add CONSTRAINT pk_name_contact primary key (name,contact); 

insert into orders values(3,'vicky',18,'vicky86yt89@gmail.com','mankhurd','985466545','cake',11);

select *from customers;

select * from orders;

