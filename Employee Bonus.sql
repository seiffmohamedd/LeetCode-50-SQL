select employee.name , bonus.bonus from employee left join bonus on (employee.empid = bonus.empid) 
where bonus.bonus<1000 or bonus.bonus is null;