with cte1 as(
    select patient_id , patient_name, replace(conditions,' ','^') as conditions
    from patients
)
select patient_id , patient_name , replace(conditions,'^',' ') as conditions
from cte1 
where conditions like 'DIAB1%' or conditions like '%^DIAB1%';