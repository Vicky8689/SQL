/*Cursor  --tempary mamory*/

use swiggy;
select * from Students;

--creating cursor

--declerting cursor
--eithout cursor variable
declare myCursor  cursor scroll for select * from Students
open myCursor
fetch first from myCursor
fetch next from myCursor
fetch last from myCursor
fetch prior from myCursor
fetch absolute 1 from myCursor
fetch relative 1 from myCursor
close myCursor
deallocate myCursor


--with cursor variable

declare vicky cursor scroll for select studentid,firstname from Students 
declare @id int ,@name varchar(50)
open vicky
fetch first from vicky into @id,@name
print 'your id is '+cast(@id as varchar(50))+' your name '+ cast(@name as varchar(50))
close vicky
deallocate vicky


select * from Students;




--cursor store procedure
create proc spMyCursor
as 
begin 
declare myCursor  cursor scroll for select * from Students
open myCursor
fetch first from myCursor
fetch next from myCursor
fetch last from myCursor
fetch prior from myCursor
fetch absolute 1 from myCursor
fetch relative -1 from myCursor
close myCursor
deallocate myCursor
end
--opening cursor



