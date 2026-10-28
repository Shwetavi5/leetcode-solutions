-- Write your PostgreSQL query statement below
with cte_union  as (

select requester_id as id
from RequestAccepted

UNION ALL

select accepter_id
from RequestAccepted )


select id, count(*) as num
from cte_union 
group by id
order by count(*) desc
limit 1
