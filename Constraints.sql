/*Constraints
ristiction and condition on data 
*/
use swiggy;

create table orders(

[id] int,
[name] varchar(30),
[age] int,
check (age between 18 and 60),
[email] varchar(30) Default 'usermail',
[address] varchar(60) not null,
[contact] varchar(10) unique,
[ordred] varchar(50),
Primary Key(id)      --not null and no diplicate
);
--[college] varchar(50) Default 'abcd',
--Check(age>18),
--check(age in (18,54)),   
drop table orders;
select *from customers;
select *from orders;
insert into orders values(2,'vicky',18,'vicky8689@gmail.com','mankhurd','98766545','cake');