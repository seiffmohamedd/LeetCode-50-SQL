
select product_name , sum(unit) as unit from products p left join orders o on p.product_id = o.product_id 
where to_char(order_date,'YYYY-MM') ='2020-02'
group by product_name 
having sum(unit)>=100;