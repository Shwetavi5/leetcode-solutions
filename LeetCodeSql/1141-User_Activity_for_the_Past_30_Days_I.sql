-- Write your PostgreSQL query statement below
select 
activity_date as day, count(distinct user_id) as active_users
from activity
WHERE activity_date BETWEEN DATE '2019-06-28'
                        AND DATE '2019-07-27' 
group by activity_date 
