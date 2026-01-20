-- 
https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/description/

select  customer_number
from orders
group by customer_number
ORDER BY count(*)  DESC
limit 1
