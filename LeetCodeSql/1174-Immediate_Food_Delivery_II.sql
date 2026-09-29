SELECT  

ROUND(
        COUNT(
            CASE
                WHEN flag = 'immediate' THEN 1
            END
        )::numeric
        / COUNT(flag) * 100,
        2
    ) AS immediate_percentage
    
FROM (

(select d.customer_id, d.order_date,  t.firstorder_date,
CASE
    when  d.order_date = d.customer_pref_delivery_date then  'immediate'
    else 'scheduled'
END flag 
from delivery d

inner join 

(SELECT 
customer_id,  min(order_date) as firstorder_date
from Delivery
group by customer_id) t

on d.customer_id = t.customer_id and d.order_date = t.firstorder_date )) temp

