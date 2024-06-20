/*joints*/
use joints;

select * from orders;
select* from customers; 


--inner join

select *from customers inner join orders on orders.customer_id=customers.id;
select *from orders inner join customers on customers.id=orders.customer_id;


select customers.name,orders.ordered_item from customers,orders where  orders.customer_id=customers.id;


--outer join
--left joint
select c.name,o.ordered_item from customers as c left join orders as o on o.customer_id= c.id;

--right join
select customers.name,orders.ordered_item from customers right join orders on customers.id = orders.customer_id;


--full join
select * from customers full join orders on customers.id = orders.customer_id;
--composite join



--cross join

select * from customers cross join orders;

select* from customers; 
--self join

select * from  customers as c1 inner join customers as c2 on c1.age = c2.age;


update customers
set age = 25 where id in (8,5);


--set opperation


--union   removing duplicate rows

select * from customers
union
select * from Students;

select * from customers
Intersect
select * from Students;













