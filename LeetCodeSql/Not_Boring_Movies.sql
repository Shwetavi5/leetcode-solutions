-- 
https://leetcode.com/problems/not-boring-movies/description/

select * 
from Cinema
where id % 2 <> 0 AND description <> "boring"
order by rating DESC
