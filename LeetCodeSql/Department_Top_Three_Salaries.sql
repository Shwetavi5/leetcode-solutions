-- https://leetcode.com/problems/department-top-three-salaries/

select Department, Employee, Salary
from(

select Department, Employee, Salary
from(

select d.name as Department, e.name as Employee, 
e.salary as Salary, DENSE_Rank() OVER (Partition BY 
d.name order by e.salary desc) as rnk 

from  Employee as e
join Department as d on e.departmentId =  d.id ) as 
high_sal

where rnk <= 3
