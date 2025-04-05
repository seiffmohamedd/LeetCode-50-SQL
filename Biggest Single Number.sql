with cte1 as (select coalesce(max(num),null) as num
from mynumbers 
group by num
having count(num) = 1)

select max(num) as num from cte1;