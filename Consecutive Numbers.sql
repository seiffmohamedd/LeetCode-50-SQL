with cte1 as (select num ,
lead(num) over() as n
from logs ),

cte2 as(select * , lead(n) over() as nn
from cte1)

select distinct num as ConsecutiveNums 
from cte2
where num=n and n=nn;


