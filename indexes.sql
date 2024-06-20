/*to facilate quick ritrival of data from data base*/
-- indexsis are created on table or views
--reduce time cunsuption
use swiggy;

select * from employees
--non cluster index
create index Ix_Salary
on employees(salary asc);

drop index employees.Ix_Salary;

sp_helpindex Ix_Salary;

select * from employees



-----------------------------------------
create clustered index Ix_Salary
on employees(salary asc);

create clustered index Ix_Salary
on employees(salary asc,Department asc);

sp_helpindex employees

create nonclustered index NC_INDX_Firstname
on employees (firstname asc);

drop index employees.NC_INDX_Firstname



-----------------unique and non unique indexs in sql------------------

