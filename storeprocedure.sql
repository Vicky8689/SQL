/*strore procedure*/
use swiggy;

select * from Employees;

--crea te proceduer
create procedure spGetEmployee
as 
begin select firstname,lastname from Employees end;
--execute procedure
execute spGetEmployee;
spGetEmployee;

--store procedure with parameters


create proc spgetEmployeesBydepartment
@Department varchar(10),
@salary int
as 
begin select * from Employees where Department=@Department and Salary>=@salary end;


spgetEmployeesBydepartment 'IT',500;
spgetEmployeesBydepartment @Department='IT',@salary=500;

--altring store procedure
alter procedure spGetEmployee
as 
begin select firstname,lastname from Employees end;

--drop 
drop proc spGetEmployee

select * from Employees;
--viewing the store sprocedure 
sp_helptext spgetEmployeesBydepartment;


spGetEmployee
select * from Employees;
---------------------------------------------------------------------------------
----------------storeprocedure using triger------------------------

create trigger tr_sp_getupdated_table
on Employees
after insert
as 
begin
	print 'youe update table is ';
	execute spGetEmployee	
end

insert into Employees 
values(11,'mukesh','kewat','cs',75000.00)

-----------------store using views---------------
spGetEmployee
select * from Employees;

create procedure sp_vw_get_table
as
begin
	select * from custum_view
end

sp_vw_get_table

-------------store procedure cursor -------------------

create procedure sp_curs_get_table
as
begin
	declare myspCursor  cursor scroll for select * from Students
	open myspCursor
	fetch first from myspCursor
close myspCursor
deallocate myspCursor
end

sp_curs_get_table


-------------store procedure using subquery-------------------
select * from Employees;

create proc sp_sbq_gethighsalary
as
begin
	select * from Employees where EmployeeID in(select EmployeeID from Employees where Salary>=50000)
end