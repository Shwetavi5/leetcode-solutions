-- Write your PostgreSQL query statement below

-- -- Most active user

select results 
from (
(select mr.user_id, u.name  as results,
count(*)  as countrating 
from MovieRating mr
join users u on mr.user_id  = u.user_id 
group by  mr.user_id,u.name
ORDER BY count(*) DESC, u.name ASC
limit 1
--highestratedmovie
) 
union all

(select mr.movie_id ,m.title as results,
avg(mr.rating)  as avgrating
from MovieRating mr
join movies m on mr.movie_id  = m.movie_id 
WHERE mr.created_at >= DATE '2020-02-01'
  AND mr.created_at < DATE '2020-03-01'
group by  mr.movie_id, m.title 
ORDER BY avg(mr.rating)  DESC, m.title ASC
limit 1

)

)t
