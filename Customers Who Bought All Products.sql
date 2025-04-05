    with cte as(select customer_id , count(distinct product_key) as p
    from customer
    group by customer_id)

    select customer_id 
    from cte 
    where p = (select count(*) from product);