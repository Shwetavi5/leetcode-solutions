-- https://leetcode.com/problems/nth-highest-salary/description/

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
set n = n-1;
  RETURN (
      # Write your MySQL query statement below.
       select DISTINCT salary 
       from Employee 
       order by salary desc 
       LIMIT 1 OFFSET n

  );
END


-- select salary
-- from (select salary, dense_rank() over (order by salary desc) as rnk 
-- from employee)as tmp where rank = n

