with cte1 as(
select person_name ,turn,
sum(weight) over(order by turn) AS cumulative_sum 
from Queue 
order by turn) 

select person_name
from cte1
where cumulative_sum <=1000
order by cumulative_sum desc 
limit 1;