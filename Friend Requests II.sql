/* Write your PL/SQL query statement below */



with cte1 as(select requester_id as id , sum(num) as num
from
    (select requester_id , count(accepter_id) as num
    from RequestAccepted 
    group by requester_id

    union all

    select accepter_id , count(requester_id) as num
    from RequestAccepted 
    group by accepter_id
    )
    group by requester_id
    )

select id , num from cte1 where num = (select max(num) from cte1);
