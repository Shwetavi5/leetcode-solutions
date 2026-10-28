-- Write your PostgreSQL query statement below

with cte_joinTable as(
    select p.product_name, o.order_date, 
    unit
    from Products p
    inner join orders o on p.product_id = o.product_id  
    WHERE o.order_date >= DATE '2020-02-01'
      AND o.order_date <  DATE '2020-03-01'
)

select product_name, 
sum(unit) as unit
from cte_joinTable 
group by product_name
having sum(unit) >=100
