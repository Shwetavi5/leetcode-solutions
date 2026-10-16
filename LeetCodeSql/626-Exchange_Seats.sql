-- Write your PostgreSQL query statement below

select id, coalesce(swap_student, student) as student
from(
    select  id, student,
        case 
            when id %2 =1 then lead(student) over(order by id)
            when id%2 != 1 then lag(student) over(order by id)
        end as swap_student
        
    from seat
)t



