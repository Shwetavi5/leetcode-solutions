-- Write your PostgreSQL query statement below
-- select m.name as name
-- from employee e
-- join employee  m on  e.managerId = m.id
-- group by  m.name, m.id
-- having count(e.id) >= 5




select employee.name as name
from employee 
join (select  managerId
      from employee
      group by managerId
      having count(managerId)>=5) as manager

on employee.id = manager.managerId 