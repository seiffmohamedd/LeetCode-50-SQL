select id , 
case 
    when id%2=1 and id=(select max(id) from seat) then student 
    when id%2=1 then lead(student) over()
    else lag(student) over()
    end as student 
from seat
