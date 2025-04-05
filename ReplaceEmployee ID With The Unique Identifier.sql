select unique_id , name
from Employees 
left JOIN EmployeeUNI
ON EmployeeUNI.id = Employees.id;