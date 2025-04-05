select employee_id , department_id 
from employee 
where primary_flag='Y'
union 
select employee_id , 
first_value(department_id) over(partition by employee_id)
from employee
where primary_flag='N' and employee_id not in (select employee_id 
from employee 
where primary_flag='Y' )
order by employee_id;