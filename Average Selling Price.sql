select p.product_id, coalesce(round(sum(u.units * p.price)/sum(u.units),2),0) as average_price 
from prices p left join unitssold u on u.purchase_date between p.start_date and p.end_date 
and u.product_id = p.product_id
group by p.product_id;