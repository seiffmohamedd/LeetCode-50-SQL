select user_id , concat(substr(upper(name),1,1),substr(lower(name),2,length(name))) as name
from users
order by user_id;