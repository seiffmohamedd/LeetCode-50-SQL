SELECT a1.MACHINE_ID , 
round(avg(abs(a2.timestamp - a1.timestamp)),3) as processing_time 
from activity a1 , activity a2 where a1.machine_id = a2.machine_id 
and a1.process_id = a2.process_id and a1.activity_type = 'start'
and a2.activity_type='end' group by a1.machine_id;