select query_name , round(sum(rating/position)/count(rating),2) as quality,
round(((select count(rating)from queries q2 where rating<3 and q1.query_name = q2.query_name)/count(rating))*100,2) as poor_query_percentage 
from queries q1
group by query_name;