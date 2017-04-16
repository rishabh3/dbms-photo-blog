\c photodb
--
--Simple => no joins, no nesting :
--
--
--Select all the users with their first_name,dob from the users who are female
--
select first_name, dob
from blog_userprofile
where gender = 'F';
--
--Select all the genre name  from the genres
--
select name
from blog_genre;
--
--Select caption from the photos where file_type = JPEG
--
select caption
from blog_photo
where file_type = 'jpg';
--
--Select name and price of all the plans
--
select name, price
from blog_plan;
--
--Select name and price for all the workshop
--
select name, price
from Workshop;
--
--Select caption and location of photos having  number_of_downloads < 10
--
select caption,location
from blog_photo
where number_of_downloads < 10;
--
--Select name and organisation from Workshop where price < 200
--
select name, organisation
from blog_workshop
where price < 300;
--
--Medium => cross joins, nesting :
--
--
--Select name ,requirement,price for all the workshop
--
select name, requirement, price
from blog_workshop W, blog_workshop_requirements R
where W.w_id = R.w_id_id;
--
--Select camera features and genre name for all the photographs
--
select feature, G.name
from blog_photo P, blog_genre G, blog_camera C, blog_camerafeatures F
where C.name = 'DSLR' and c_id = F.camera_id_id and c_id = P.camera_id_id and P.gen_id_id = G.gen_id;
--
--Select all the plans which have a duration of 30 days and price is less than 250
--
(select name, features, price
from blog_plan P, blog_plan_features F
where P.plan_id = F.plan_id_id and P.duration = '30 days')
intersect
(select name, features, price
from blog_plan P, blog_plan_features F
where P.plan_id = F.plan_id_id and P.price < 8000);
--
--Select the user and their plans
--
select U.first_name, P.name
from blog_subscribes_to S, blog_userprofile U, blog_plan P where s.user_id_id = U.u_id and P.plan_id = S.plan_id_id ;
--
--Select the photo_id,location and rank of the genre they belong.
--
select photo_id, location, G.rank
from blog_photo P, blog_genre G
where P.gen_id_id = G.gen_id and G.rank > 4 order by G.rank;
--
--Select the names,email_id and phone number of users whose pictures have maximum like
--
select first_name,email_id,phone from blog_userprofile where u_id in(select user_id_id from blog_review where number_of_likes in (select max(number_of_likes) from blog_review));
--
--Select the names of user who are intrested in genre which has max ranking
--
select first_name,m_init,last_name from blog_userprofile where u_id in(select user_id_id from blog_intrested_in where genre_id_id in (select gen_id from blog_genre where blog_genre.rank in(select max(blog_genre.rank) from blog_genre)));

-- Difficult => EVERYTHING!!!
--
--List all the workshop which has maximum number of participants
--
create view test as select w_id_id , count(user_id_id) as c from blog_participates_in group by w_id_id;
select name from blog_workshop where w_id in (select w_id_id from test where c in (select max(c) from test));
--
--List the popular plan and its features and its duration
--
create view test1 as select plan_id_id , count(user_id_id) as c from blog_subscribes_to group by plan_id_id;
select distinct name,duration,features from blog_plan,blog_plan_features where plan_id_id = plan_id and plan_id in (select plan_id_id from test1 where c in (select max(c) from test1));
--
--List the most followed user with their personal details
--
create view test2 as select followed_id_id , count(follower_id_id) as f from blog_follows group by followed_id_id;
select username,first_name,last_name,phone,email_id,dob from blog_userprofile where u_id in (select followed_id_id from test2 where f in(select max(f) from test2));
--
--List the user who has got most number of reads for his article and list the genre in which he has taken photographs of.
--
select foobar.name,bup.username,bup.first_name,bup.last_name,bup.dob from blog_userprofile as bup natural join (select bar.name,bar.u_id from (select name,user_id_id as u_id from blog_genre join (select distinct user_id_id,genre_id_id from blog_userprofile join blog_intrested_in on user_id_id = u_id) as foo on foo.genre_id_id = gen_id) as bar natural join (select u_id from blog_userprofile where u_id in(select user_id_id from blog_article where number_of_reads in(select max(number_of_reads) from blog_article ))) as foo) as foobar;
--
--list the firstname and his/her comments .
--
select first_name,comments from blog_userprofile join (select user_id_id,comments from blog_review join blog_comments on review_id_id=review_id) as foo on user_id_id = u_id;
--
--List all the articles,number_of_reads and the its author which is written for a photo of genre starting with B.
--
select username,article_id,article,number_of_reads from blog_userprofile join (select article_id,article,number_of_reads,user_id_id from blog_article where photo_id_id in(select photo_id as photo_id_id from blog_photo where gen_id_id in (select gen_id from blog_genre where name like 'B%'))) as bar on user_id_id = u_id;
--
--List all the photos of type jpg that were shot using a dslr and having maximum number of reviews
--
select distinct p.photo_id from blog_photo p, blog_review r,blog_review_about a,blog_camera c where p.file_type = 'jpg' and c.name = 'dslr' and c.c_id = p.camera_id_id and a.p_id_id = p.photo_id and r.review_id = a.rev_id_id and r.review_id in ( select review_id from blog_review where number_of_share in(select max(number_of_share) from blog_review ));
