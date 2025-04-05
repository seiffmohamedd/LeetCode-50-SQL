
select product_id , 10 as price 
from products 
group by product_id
having min(change_date) > '2019-08-16'

union all
select product_id, new_price AS price
from Products
where (product_id, change_date) in (select product_id, max(change_date) from Products
where change_date <= '2019-08-16'
group by product_id);