select max(num) as num
from 
(select num, count(*)
from 
MyNumbers
group by num
having count(*) = 1
order by num desc
limit 1) t

-- SELECT MAX(
--     CASE 
--         WHEN COUNT(*) = 1 THEN num
--     END
-- ) AS num
-- FROM MyNumbers
-- GROUP BY num;

