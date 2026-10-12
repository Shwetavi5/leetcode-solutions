-- Write your PostgreSQL query statement below

-- Write your PostgreSQL query statement below

select distinct product_id, 
coalesce(first_value(pprice) over(partition by product_id order by  
                CASE WHEN change_date <= DATE '2019-08-16'
                     THEN 0 ELSE 1 END, change_date desc),10) as price
from (
select 
    product_id, 
    change_date,
    case when change_date <=  '2019-08-16 ' then  new_price 
    else null
    end pprice
    
from Products 
)t
order by product_id
