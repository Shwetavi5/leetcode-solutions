-- Write your PostgreSQL query statement below
with cte_distinct as (select 
        distinct sell_date,
        product
    from Activities  )

select 
    sell_date, 
    count(*) as num_sold,
    STRING_AGG(product, ',' ORDER BY product) as products
from cte_distinct
group by sell_date
order by sell_date
