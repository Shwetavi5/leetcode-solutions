-- Write your PostgreSQL query statement below
select person_name
from(

select
* , 
sum(weight ) over(order by turn) as running_total
from queue
 )t
where running_total <= 1000
order by turn desc
limit 1
