-- Write your PostgreSQL query statement below
select 
    p.project_id, 
    Round(avg(e.experience_years),2) as average_years 
FROM project p
LEFT JOIN employee e
ON p.employee_id = e.employee_id 
group by p.project_id
