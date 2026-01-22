-- Problem: Customers Who Never Order
-- LeetCode: https://leetcode.com/problems/customers-who-never-order/
-- 
https://leetcode.com/problems/customers-who-never-order/descriptn/
-- Write your SQL solution below:

-- select c.name as Customers
-- from customers as c
-- left join orders as o on c.id = o.customerId
-- where o.id is Null


-- select c.name as Customers
-- from customers as c
-- where not exists
-- (select 1
-- from orders o
-- where c.id = o.customerId);

select c.name as Customers
from customers c
left join orders o
    on c.id = o.customerId
group by c.id, c.name
having count(o.id) = 0;




