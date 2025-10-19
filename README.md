# Movie Ratings Analysis
## Project Title: Movie Lens Database Analysis
### Objective: To extract insights from movie rating data using SQL queries and identify patterns in movie popularity, quality, and genre preferences.
### Dataset
This project uses the MovieLens 100K dataset, which contains: 
・ 100,000 ratings from 943 users on 1682 movies   <br>
・ Rating scale: 1-5 stars  <br>
・ Movie metadata including titles, release years, and genres
### Questions Analyzed: 
1. What are the 10 most rated movies?
2. Which 10 movies have the highest average rating, considering only movies with at least 50 ratings?
3. Which genres have the highest average rating, considering only movies with at least 100 ratings?
### Key findings: 
#### Question 1:
・ Star Wars (1977) received the most ratings (583), making it the most popular mocie in the dataset  <br>
・ Other highly rated movies include Contact, Fargom and Return of the Jedi
#### Question 2: 
・ Although Star Wars was most popular movie, it ranked 9th out of 10 for average rating (4.36)  <br>
・ Top 3 highest-rated movies: 
1. Close Shave, A (1995) - 4.49 average rating (112 ratings) <br>
2. Wrong Trousers The (1993) - 4.47 average rating (118 ratings) <br>
3. Schnidler's List (1993) - 4.47 average rating (298 ratings) <br>

This demonstrate that popularity (number of ratings) does not always correlate with quality (average rating)
#### Question 3: Genre Analysis
・ Highest rated genres :Film Noir (4.17), Documentary (4.09), War (3.88) <br>
・ Most produced genres: Drama (131 movies), Comedy (103 movies), and Action (96 movies)  <br>
・ Sample effect size was observed. Film noir had only 5 movies with 100+ ratings, making its average less reliable than genres with larger sammples  <br>
・ When the threshold was lowered to 50+ ratings for Film noir, Documentary and Western genres, Documentary's rating decreased from 4.09 to 3.85, demonstrating impact of sample size on averages
### Tools & Technologies Used
・ Database: SQLite  <br>
・ Interface: DB Browser for SQLite
### Methodology
・ Used INNER JOINS to combine movie and rating data  <br>
・ Used aggregate functions (AVG, COUNT) and subqueries for complex filtering <br>
・ Used UNION operations to analyze multiple genre categories
