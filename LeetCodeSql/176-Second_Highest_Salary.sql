-- https://leetcode.com/problems/second-highest-salary/description/


# Write your MySQL query statement below

# MAX
-- SELECT MAX(salary) AS SecondHighestSalary
-- FROM employee
-- WHERE salary < (SELECT MAX(salary) FROM employee);

# Limit
select (select distinct salary from employee order by salary desc limit 1 
OFFSET  1 ) as  SecondHighestSalary;
