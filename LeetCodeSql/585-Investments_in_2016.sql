select round(sum(tiv_2016):: NUMERIC,2) as tiv_2016
from (
select 
    tiv_2016,
    tiv_2015,
    lat,
    lon, 
    count(tiv_2015) over(partition by tiv_2015 ) as count_tiv2015,
    count(*) over(partition by lat, lon) as countlatlong
from insurance )t
where count_tiv2015 > 1 and countlatlong = 1
