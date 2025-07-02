Update table posts set cpation= 'Best Pizza Ever' where post_id=3; 

Select * from posts where user_id =1;

Select * from posts order by created_at desc; 

Select p.post_id, count(l.like_id) from posts as p join likes l on p.post_id=l.post_id group by p.post_id having count(l.like_id) >=2;

Select sum(number_likes) from(
Select p.post_id, count(l.like_id) as number_likes from posts as p 
join likes l on p.post_id=l.post_id group by p.post_id) as likes_by_host; 

Select name from users where user_id IN(Select user_id from comments where post_id=1);

WITH cte as(
Select p.post_id, count(l.like_id) number_likes from posts as p JOIN likes as l on p.post_id=l.post_id group by p.post_id) 
Select post_id, number_likes, RANK() OVER(ORDER BY number_likes DESC) as rank_by_likes from cte;

WITH cte as(
Select p.post_id, p.caption, c.comment_text from posts p left join comments c on p.post_id=c.post_id)
Select * from cte; 	

With cte as(
Select p.post_id, count(l.like_id) number_likes from posts as p JOIN likes as l on p.post_id=l.post_id group by p.post_id)
Select post_id, number_of_likes, case when number_likes =<2 then 'low_likes'
when number_likes=2 then 'few_likes'
when number_likes>2 then 'lot_of_likes'
else 'no_data'
END like_category
from cte;


