select unique_id, name
from employees e
LEFT join EmployeeUNI eu
on e.id = eu.id