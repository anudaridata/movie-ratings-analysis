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

