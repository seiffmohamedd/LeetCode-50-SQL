select contest_id , round((count(user_id)/(select count(user_id) as c from users ))*100,2) as percentage 
from register
where (select count(user_id) as c from users )
group by contest_id
order by percentage desc , contest_id;