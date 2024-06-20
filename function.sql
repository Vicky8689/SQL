/*function in sql*/

use swiggy;
select * from Students;

--single row sork on singel row and give singlt output
-- multiple row work on multiple rOW and give single out put

--user define function 
--scaler valued functon

create function CalculateArea(@radius Float)
returns float
as
begin 
	declare @area float;
	set @area=PI()*Power(@radius,2);
	return @area;
end;

select dbo.CalculateArea(5);

create function add_fun(@num as int)
returns int 
Begin
return(@num+5)
end

select dbo.add_fun(6);

--table valued function
create function up_Gpa(@gpa decimal)
returns table
as
return (select * from Students where GPA>=@gpa);


select * from dbo.up_Gpa(3.9);

select * from Students;
	
drop function dbo.up_Gpa;


insert into Students 
values (11,'vk','y','cs',4.2)


create function add_fun_empty()
returns int 
Begin
return(5)
end

select dbo.add_fun_empty();