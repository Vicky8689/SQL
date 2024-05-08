

use Practice;

create database Practice;

create table employees(
[id] int,
[name] varchar(15),
[age] int ,
[department] varchar(15),
[salary] decimal,
);

select * from employees;

insert into employees(id,name,age,department,salary)
values 
(101,'vicky',23,'IT',60000.00),
(102,'utkarsh',24,'HR',70000.00);

delete from employees where id = 102;









SELECT name from master.sys.databases;
SELECT name from sys.tables;
