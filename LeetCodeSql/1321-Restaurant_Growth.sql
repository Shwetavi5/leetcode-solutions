--Write your PostgreSQL query statement below
select
    visited_on,
    sum_amount as amount, 
    average_amount
from (
select 
    visited_on, 
    Daily_total as amount,rn,
    round(sum(Daily_total) over(order by visited_on rows between 6  PRECEDING and current row  ),2) as sum_amount,
    round(avg(Daily_total) over(order by visited_on rows between 6  PRECEDING and current row  ),2) as average_amount
from(
    select visited_on, 
    row_number()over(order by visited_on) as rn, 
    Daily_total
from (select
    visited_on,
    sum(amount) as Daily_total
    from customer
    group by visited_on
) t
)t1
)
WHERE rn >= 7
order by visited_on
