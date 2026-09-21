-- Write your PostgreSQL query statement below
select s.student_id, s.student_name,sub.subject_name , count(ex.subject_name ) as attended_exams
from Students s
cross join Subjects sub
left join Examinations ex on s.student_id = ex.student_id  AND sub.subject_name = ex.subject_name
group by s.student_id, s.student_name, sub.subject_name
order by  s.student_id, sub.subject_name