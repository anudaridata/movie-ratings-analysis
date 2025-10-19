-- MovieLens Dataset Exploration
-- Author: Anudari Chingunbat
-- Date: October 2025

-- Question 1: What are the 10 most rated movies? 
-- This question is asking about popularity of the movie (most popular movies gets rated the most) and not about movies with highest score! 
SELECT movies.title, COUNT(*) as rating_count
FROM ratings
INNER JOIN movies on movies.movie_id = ratings.movie_id
GROUP BY movies_title
ORDER BY rating_count DESC
LIMIT 10;
-- Results (HINT: It is connected to spaces!) was Star Wars (1977) was the most rated with 583 ratings, 
-- followed by Contact (1997) with 509 ratings.
-- Question 2: Which 10 movies have the highest average rating, considering only movies at least 50 ratings? Limit the answer to 10
SELECT movies.title, COUNT(*) as rating_count, ROUND(AVG(ratings.rating), 2) as average_rating
FROM ratings
INNER JOIN movies on ratings.movie_id = movies.movie_id
GROUP BY movies.title
HAVING COUNT(*)>50
ORDER BY average_rating DESC
LIMIT 10;

-- Question 3: Which genre has the highest average rating considering only movies with at least 100+ ratings? 
-- This question is asking about the popularity of the genre to the audience, given that the count of movies in that genre is higher than 100
Select 'Action' as genre, ROUND(AVG(rating),2) as avg_rating, count(distinct movies.movie_id) as movie_count
from ratings
inner join movies on ratings.movie_id = movies.movie_id
where action=1
and movies.movie_id in (Select movie_id from ratings group by movie_id having count(*) >= 100)


UNION

Select 'Adventure' as genre, ROUND(AVG(rating),2) as avg_rating, count(distinct movies.movie_id) as movie_count
from ratings
inner join movies on ratings.movie_id = movies.movie_id
where adventure=1
and movies.movie_id in (Select movie_id from ratings group by movie_id having count(*) >= 100)

UNION

Select 'Animation' as genre, ROUND(AVG(rating),2) as avg_rating, count(distinct movies.movie_id) as movie_count
from ratings
inner join movies on ratings.movie_id = movies.movie_id
where animation=1
and movies.movie_id in (Select movie_id from ratings group by movie_id having count(*) >= 100)

UNION

Select 'Childrens' as genre, ROUND(AVG(rating),2) as avg_rating, count(distinct movies.movie_id) as movie_count
from ratings
inner join movies on ratings.movie_id = movies.movie_id
where childrens=1
and movies.movie_id in (Select movie_id from ratings group by movie_id having count(*) >= 100)

UNION

Select 'Comedy' as genre, ROUND(AVG(rating),2) as avg_rating, count(distinct movies.movie_id) as movie_count
from ratings
inner join movies on ratings.movie_id = movies.movie_id
where comedy=1
and movies.movie_id in (Select movie_id from ratings group by movie_id having count(*) >= 100)

UNION

Select 'Crime' as genre, ROUND(AVG(rating),2) as avg_rating, count(distinct movies.movie_id) as movie_count
from ratings
inner join movies on ratings.movie_id = movies.movie_id
where crime=1
and movies.movie_id in (Select movie_id from ratings group by movie_id having count(*) >= 100)

UNION

Select 'Documentary' as genre, ROUND(AVG(rating),2) as avg_rating, count(distinct movies.movie_id) as movie_count
from ratings
inner join movies on ratings.movie_id = movies.movie_id
where documentary=1
and movies.movie_id in (Select movie_id from ratings group by movie_id having count(*) >= 100)

UNION

Select 'Drama' as genre, ROUND(AVG(rating),2) as avg_rating, count(distinct movies.movie_id) as movie_count
from ratings
inner join movies on ratings.movie_id = movies.movie_id
where drama=1
and movies.movie_id in (Select movie_id from ratings group by movie_id having count(*) >= 100)

UNION

Select 'Fantasy' as genre, ROUND(AVG(rating),2) as avg_rating, count(distinct movies.movie_id) as movie_count
from ratings
inner join movies on ratings.movie_id = movies.movie_id
where fantasy=1
and movies.movie_id in (Select movie_id from ratings group by movie_id having count(*) >= 100)

UNION

Select 'Film noir' as genre, ROUND(AVG(rating),2) as avg_rating, count(distinct movies.movie_id) as movie_count
from ratings
inner join movies on ratings.movie_id = movies.movie_id
where film_noir=1
and movies.movie_id in (Select movie_id from ratings group by movie_id having count(*) >=100)

UNION

Select 'Horror' as genre, ROUND(AVG(rating),2) as avg_rating, count(distinct movies.movie_id) as movie_count
from ratings
inner join movies on ratings.movie_id = movies.movie_id
where horror=1
and movies.movie_id in (Select movie_id from ratings group by movie_id having count(*) >= 100)

UNION

Select 'Musical' as genre, ROUND(AVG(rating),2) as avg_rating, count(distinct movies.movie_id) as movie_count
from ratings
inner join movies on ratings.movie_id = movies.movie_id
where musical=1
and movies.movie_id in (Select movie_id from ratings group by movie_id having count(*) >= 100)

UNION

Select 'Mystery' as genre, ROUND(AVG(rating),2) as avg_rating, count(distinct movies.movie_id) as movie_count
from ratings
inner join movies on ratings.movie_id = movies.movie_id
where mystery=1
and movies.movie_id in (Select movie_id from ratings group by movie_id having count(*) >= 100)

UNION

Select 'Romance' as genre, ROUND(AVG(rating),2) as avg_rating, count(distinct movies.movie_id) as movie_count
from ratings
inner join movies on ratings.movie_id = movies.movie_id
where romance=1
and movies.movie_id in (Select movie_id from ratings group by movie_id having count(*) >= 100)

UNION

Select 'Scifi' as genre, ROUND(AVG(rating),2) as avg_rating, count(distinct movies.movie_id) as movie_count
from ratings
inner join movies on ratings.movie_id = movies.movie_id
where scifi=1
and movies.movie_id in (Select movie_id from ratings group by movie_id having count(*) >= 100)

UNION

Select 'Thriller' as genre, ROUND(AVG(rating),2) as avg_rating, count(distinct movies.movie_id) as movie_count
from ratings
inner join movies on ratings.movie_id = movies.movie_id
where thriller=1
and movies.movie_id in (Select movie_id from ratings group by movie_id having count(*) >= 100)

UNION

Select 'War' as genre, ROUND(AVG(rating),2) as avg_rating, count(distinct movies.movie_id) as movie_count
from ratings
inner join movies on ratings.movie_id = movies.movie_id
where war=1
and movies.movie_id in (Select movie_id from ratings group by movie_id having count(*) >= 100)

UNION

Select 'Western' as genre, ROUND(AVG(rating),2) as avg_rating, count(distinct movies.movie_id) as movie_count
from ratings
inner join movies on ratings.movie_id = movies.movie_id
where western=1
and movies.movie_id in (Select movie_id from ratings group by movie_id having count(*) >= 100)
ORDER BY avg_rating DESC

