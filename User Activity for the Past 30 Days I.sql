select activity_date as day, coalesce(count(distinct user_id),0) as active_users
from activity
where datediff('2019-07-27',activity_date)<30 and activity_date <= '2019-07-27' 
group by activity_date;