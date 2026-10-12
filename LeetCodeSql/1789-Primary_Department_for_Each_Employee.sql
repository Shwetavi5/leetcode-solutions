-- Write your PostgreSQL query statement below

select employee_id, department_id
from (
select employee_id, department_id, primary_flag ,
count(department_id ) over(partition by employee_id) as count_dept
from employee ) t
where primary_flag = 'Y' or count_dept = 1
