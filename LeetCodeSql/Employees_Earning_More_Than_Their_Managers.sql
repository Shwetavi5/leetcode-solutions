-- 
https://leetcode.com/problems/employees-earning-more-than-their-managers/description/

select e.name as Employee
from Employee as e
inner join Employee as m ON 
e.managerId = m.id 
where e.salary > m.salary
