
-- Problem: Combine Two Tables
-- LeetCode: https://leetcode.com/problems/combine-two-tables/

-- Write your SQL solution below:

select  p.firstName, p.lastName, a.city, a.state
from person as p left join address as a on p.personId = a.personId