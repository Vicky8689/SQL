/*CTE*/

use swiggy;

select * from Students;

with NEW_CTE
as
(
select * from Students where Major='Mathematics'
)
select * from NEW_CTE



with NEW_CTE
as
(
select * from Students where Major='Mathematics'
)
select count(*) from NEW_CTE


with NEW_CTE
as
(
select * from Students where Major='Mathematics'
)
select * from NEW_CTE where gpa>=3


select * from Students;

with NEW_CTE(std_id,f_name,std_major,st_gpa)
as
(
select StudentID,FirstName,Major,GPA from Students where Major='Mathematics'
)
select std_id,f_name,std_major from NEW_CTE 


---cte with insert and delet

with NEW_CTE
as
(
select * from Students where Major='Mathematics'
)
select * from NEW_CTE

with NEW_CTE
as
(
select * from Students
)
insert NEW_CTE values (14,'ab','s','.net',5.6)

with NEW_CTE
as
(
select * from Students
)
update NEW_CTE set Major='C#' where StudentID =14

with NEW_CTE
as
(
select * from Students
)
delete NEW_CTE where StudentID =14


create view vWMynewview
as
with NEW_CTE
as
(
select * from Students where Major='Mathematics'
)
select * from NEW_CTE

select * from vWMynewview

---------------multiple cte
with NEW_CTE
as
(
select * from Students where Major='Mathematics'
),
NEW_CTE2
as
(
select * from Students where Major='Biology'
)
select * from NEW_CTE
union all
select * from NEW_CTE2