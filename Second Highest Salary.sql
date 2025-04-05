with cte1 as(select distinct salary from employee 
order by salary desc
limit 2)

select case when count(salary) = 0 then null else salary end as SecondHighestSalary from cte1 where salary != (select max(salary) from employee);


