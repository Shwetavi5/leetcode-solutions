-- Write your PostgreSQL query statement below

select contest_id, round((contest_users * 100 :: numeric/ num_users::numeric),2) as percentage
from
(select 
contest_id, count(user_id ) as contest_users, 

(SELECT count(distinct user_id) FROM users ) AS num_users

from Register r

group by contest_id) t

order by percentage desc, contest_id asc

