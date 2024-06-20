/* DML */
use swiggy;

select * from customers;

select distinct name from customers; 

insert into customers(name,state,city,zipcode)
values
('sachin','banarash','mumbai',400043),
('vicky','up','mumbai',400043),
('mukseh','maharstra','mumbai',400043),
('rahul','up','mumbai',400043),
('akib','mp','mumbai',400043);

insert into customers
values
('hemant','maharstra','mumbai',400043,993065);


/*UPDATE data in table*/

UPDATE customers
SET state = 'UP' 
WHERE id = 1; 

UPDATE customers          --UPDATE ALL IF WE DONT PUT CONDITION
SET CITY = 'siddharth nagar';

UPDATE customers
SET city = 'mumbai',state = 'delhi'
WHERE name = 'siddhesh';


update customers
set contact = '006050'
where contact IS NULL;


--DELETE

DELETE FROM customers
WHERE id = 9;

DELETE FROM customers; --DELET ALL THE ROW

alter table customers
drop column contact;

/*CLAUSES*/

--ORDER BY

SELECT id,name FROM customers ;
SELECT distinct name,id FROM customers ORDER BY name ASC;
SELECT id,name FROM customers ORDER BY name DESC;



SELECT * FROM customers 
ORDER BY CASE WHEN name  ='rahul' THEN 1 ELSE 2 END;  --CIRCLE LOOP ME CALTA HAI 

--DISTINCT
SELECT DISTINCT STATE FROM customers;

--GROUP BY
SELECT state ,COUNT(*) count
FROM customers 
GROUP BY state;


--HAVING
SELECT state ,COUNT(*) COUNT 
FROM  customers
GROUP BY state
HAVING COUNT(*)<4;


--NESTED QUARY
SELECT name, state 
FROM customers
WHERE STATE IN (SELECT state 
FROM  customers
GROUP BY state
HAVING COUNT(*)<6);

SELECT * FROM customers ;

--BETWEEN

SELECT ID,NAME 
FROM customers
WHERE ID BETWEEN 1 AND 5;

--IN
SELECT ID,NAME ,STATE
FROM customers
WHERE  STATE IN('up','MP');

--Aliases
SELECT NAME AS MYNAME
FROM customers;

SELECT T1.NAME 
FROM customers AS T1;

--AGGREGATION 
SELECT * FROM customers ;
SELECT COUNT(*) FROM customers ;
SELECT SUM(id) FROM customers;
SELECT AVG(id) AS avg FROM customers;
SELECT MIN(id) FROM customers;
SELECT max(id) FROM customers;