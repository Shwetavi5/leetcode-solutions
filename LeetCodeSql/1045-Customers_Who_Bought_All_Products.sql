select c.customer_id
from customer c
group by customer_id 
having count(distinct c.product_key ) = (SELECT COUNT(DISTINCT product_key)
FROM Product)
