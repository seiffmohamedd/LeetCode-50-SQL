
with cte1 as (
    select case 
        when income < 20000 then 'Low Salary'
        when income > 50000 then 'High Salary'
        when income >= 20000 or income <= 50000 then 'Average Salary'
        end as category 
from accounts
)
select coalesce(category,'Low Salary') as category  , coalesce(count(category),0) as accounts_count from cte1 where category='Low Salary'
union
select coalesce(category,'High Salary') as category , coalesce(count(category),0) as accounts_count from cte1 where category='High Salary'
union 
select coalesce(category,'Average Salary') as category , coalesce(count(category),0) as accounts_count from cte1 where category='Average Salary';
