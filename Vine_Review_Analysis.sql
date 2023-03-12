select * from vine_table
select * into votes from vine_table where total_votes >= 20
select * into helpful_votes from votes WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5
select * into vine_Y from helpful_votes where vine = 'Y'
select * into vine_N from helpful_votes where vine = 'N'


select (select count(*) from vine_Y where star_rating = 5) as five_stars, 
(select count(star_rating) from vine_Y ) as total_review
into percent_calc
from vine_Y 

select five_stars, total_review, (five_stars/total_review) as percent_5_star_reviews from percent_calc
