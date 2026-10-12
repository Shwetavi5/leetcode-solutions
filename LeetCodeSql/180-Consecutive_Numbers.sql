-- Write your PostgreSQL query statement below
select distinct num as consecutiveNums
from (
select 
    num,
    lead(num) over(ORDER BY id) as nextnum1,
    lead(num,2) over(ORDER BY id) as nextnum2
from logs )t
where num = nextnum1 and nextnum1= nextnum2
