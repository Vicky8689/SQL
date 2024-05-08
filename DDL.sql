
/*DDL*/
use swiggy;
create database swiggy;

create table customers(
id int PRIMARY KEY IDENTITY(1,1),
[name] VARCHAR(30),
[state] VARCHAR(50),
[city] VARCHAR(20),
[zipcode] int ,
[contact] varchar(15),
);

select * from customers;

insert into customers(name,state,city,zipcode,contact)
values
('vicky','maharstra','mumbai',400043,98765437),
('mukesh','maharstra','mumbai',400053,98764567),
('utkarsh','maharstra','mumbai',400043,93455437),
('abid','maharstra','mumbai',400033,9887637),
('rohan','maharstra','mumbai',400043,9876876537);


alter table customers
add checkingAdd varchar;

alter table customers
drop column checkingAdd;

alter table customers
alter column contact char(10);

alter table customers
alter column contact varchar(15);

drop table customers;
drop database swiggy;


/*truncate*/
DELETE FROM customers;   --THIS DOES NOT DELET ID CURRENT STATUS START FROM LAST STATUS  
TRUNCATE TABLE customers; --THIS  DELET ID CURRENT STATUS START FROM AGAIN ZERO OR INITIAL STATE DROP(STRUCTURE , RELENTION SHIP,ACCESS PRIVILAGE)


EXEC sp_rename customers,UP_customers;
EXEC sp_rename UP_customers,customers;

