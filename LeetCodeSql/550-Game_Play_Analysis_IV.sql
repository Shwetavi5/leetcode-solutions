-- Write your PostgreSQL query statement below
select round( count (
    case when (  a.event_date -firstlogin.first_date) = 1 then 1
    end
)::numeric/count(distinct a.player_id)::numeric    ,2) as fraction

from activity a

inner join 

(select player_id, min(event_date) as first_date
from activity
group by player_id) firstlogin

on a.player_id = firstlogin.player_id 
