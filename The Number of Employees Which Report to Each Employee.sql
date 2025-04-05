with cte1 as(select reports_to as employee_id , count(reports_to) as reports_count , round(avg(age)) as average_age
from employees 
where reports_to is not null
group by reports_to)

select c.employee_id , e.name , c.reports_count , c.average_age
from employees e , cte1 c 
where c.employee_id = e.employee_id
order by c.employee_id;


