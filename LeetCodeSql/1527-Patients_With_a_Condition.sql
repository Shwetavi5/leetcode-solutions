-- Write your PostgreSQL query statement below
-- select patient_id, patient_name, conditions
-- from patients
-- WHERE conditions like '%DIAB1%' 
-- OR conditions like '% DIAB1%'  



select * 
from Patients
-- any single character before it do not include it '%_DIAB1%'
where conditions like '% DIAB1%' or conditions like '%DIAB1%' and not conditions like '%_DIAB1%';
