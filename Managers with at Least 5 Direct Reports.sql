select e.name 
from employee e
inner join employee ee 
on e.id = ee.managerId 
group by ee.managerId
having count(ee.managerId) >=5;