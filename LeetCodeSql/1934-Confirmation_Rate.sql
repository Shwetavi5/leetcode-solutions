-- Write your PostgreSQL query statement below
select s.user_id, 
round(
    COALESCE(avg((c.action = 'confirmed')::int), 0), 2) 
    as confirmation_rate
from Signups as s
left join Confirmations c
on s.user_id = c.user_id
group by s.user_id