delete from person where (id,email) not in (select min(id) , email from person group by email);
---------------------------------------
select min(id) as id,EMAIL from person GROUP by EMAIL order by id;
