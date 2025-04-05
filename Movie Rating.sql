select name as results from(

select u.name , count(r.movie_id) as cnt from movierating r
inner join users u on r.user_id = u.user_id
group by u.name 
order by cnt desc , u.name asc

) where rownum=1
union all
select title
from(select m.title , avg(r.rating) as rr from movierating r inner join movies m on r.movie_id = m.movie_id
where to_char(r.created_at,'YYYY-MM')='2020-02'
group by m.title
order by rr desc , m.title asc)
where rownum=1;