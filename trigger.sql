/*triger*/

use swiggy;

select * from students;

insert into Students
values(13,'sg','k','bio',6.4)

--created trigger
create trigger tr_student_forInsert
on students
after insert 
as 
begin
	print 'student inserted'
end


alter trigger tr_student_forInsert
on students
after insert 
as 
begin
	select * from inserted
end

create trigger tr_studentforDelete
on students
after delete
as
begin
	select * from deleted
end

delete from Students
where studentid =13


--audit student
create table tb_student_Audit
(Audit_id int primary key identity,Audit_info varchar(max))

select * from tb_student_Audit;

create trigger tr_st_aud_forinsert
on students
after insert
as 
begin 
	declare @id int 
	select @id = studentid from inserted
	insert into tb_student_Audit
	values ('std id '+cast(@id as varchar(50)) +' time at '+cast(GETDATE() as varchar(max)))
end

create trigger tr_studentforDelete_insted
on students
instead of delete
as
begin
	print 'you cant delet'
end









---------------------------------------------------------------DDL triger ------------------------------------
--create,deop,alter

create trigger tr_ddl_table_create
on database
for create_table
as
begin
	print 'new table created !!';
end

create table test_table(id int);

create trigger tr_ddl_table_alter
on database
for alter_table
as
begin
	print 'you just alter table !!';
end

alter table test_table add name varchar(50);

create trigger tr_ddl_table
on database
for create_table,alter_table
as
begin
	print 'new table created !!';
end


--not show the trigger code
create trigger tr_ddl_table
on database
with encryption
for create_table,alter_table
as
begin
	print 'you cant  created table becaus rollback!!';
end


create trigger tr_ddl_table
on database
for create_table
as
begin
	rollback
	print 'new table created !!';
end


--logon trigger
--is panding

select * from sys.dm_exec_sessions

