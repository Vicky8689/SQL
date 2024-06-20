/*sub query*/

use joints;
select * from orders;
select* from customers; 


select * from customers where age in (select age from customers where age>25);

select * from customers where id in (select customer_id from orders where ordered_item in ('Book','Laptop'));

select * from customers where id in (select customer_id from orders where ordered_item like ('%T%'));
select * from orders where ordered_item like ('%L%');
select * from customers where age > 25;

select * from customers as c1 where 2=(select count(*) from customers as c2 where c1.age<c2.age);




--------------sub query using joint--------

select * from orders;
select * from customers; 

select * from customers where id in (select id from customers inner join orders on customers.id=orders.customer_id)


