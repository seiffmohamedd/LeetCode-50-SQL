with cte1 as (
    select player_id, min(event_date) as m 
    from activity
    group by player_id
),
cte2 as (
    select player_id, m, m + interval 1 Day as next_day
    from cte1
),
cte3 as(select a.player_id
from activity a
join cte2 c on a.player_id = c.player_id and a.event_date = c.next_day
)

select round((count(player_id)/ (select count(distinct player_id) from activity) ),2) as fraction
from cte3;


