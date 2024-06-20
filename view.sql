/*views*/

use swiggy;

select * from Students;

--creatin view

create view custum_view as select FirstName,LastName from Students;

--viewing view 

select * from custum_view;

--alter the view 

alter view custum_view as select FirstName from Students;

--droping view 
drop view if exists custum_view;
