select signups.user_id, coalesce(round(avg(action='confirmed'),2),0) as confirmation_rate
from signups left join confirmations using(user_id)
group by signups.user_id;