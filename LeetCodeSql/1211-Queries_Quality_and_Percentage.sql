-- Write your PostgreSQL query statement below
select query_name,
round(AVG((rating::numeric/position)),2) as quality,
round((count(
    case when rating<3 then 1
    end)::numeric/count(rating))*100 ,2)as poor_query_percentage
From Queries 
group by query_name
