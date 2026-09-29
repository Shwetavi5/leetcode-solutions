-- Write your PostgreSQL query statement below

--SUBSTRING(string, starting_position, number_of_characters)
select user_id, 
(upper(substring(name, 1,1)) || lower(substring(name, 2) ))as name
from Users
order by user_id 
