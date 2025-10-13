# Analysis Findings 
## Dataset overview
- ** Source: MovieLens 100K (Link: https://grouplens.org/datasets/movielens/100k/) released in 1998
- ** Total ratings: 100,000 ratings (1-5) from 943 users on 1682 movies.
- ** Each user has rated at least 20 movies.
- ** From the data I used u.data (the ratings by each user), u.item (information about the movies), u.user (demographic information about users)
## Key Insights
### Question 1: Most Popular Movies (by number of ratings) 
**Top 10 Most-Rated Movies:**
1. Star Wars (1977)|583 ratings
2. Contact (1997)|509 ratings
3. Fargo (1996)|508 ratings
4. Return of the Jedi (1983)|507 ratings
5. Liar Liar (1997)|485 ratings
6. English Patient, The (1996)|481 ratings
7. Scream (1996)|478 ratings
8. Toy Story (1995)|452 ratings
9. Air Force One (1997)|431 ratings
10. Independence Day (ID4) (1996)|429 ratings
## Observation for Question 1: 
Movies that were produced in 1990s dominate the most-rated list. This might be due to the fact that the MovieLens data sets were collected from 1995-1998. Movies from the 1970s-1980s like Star Wars and Return of the Jedi had already become classics by the time this data was collected. While Fargo, Liar Liar were recent releases that users were actively rating. This time sense is important to consider when interpreting the "popularity" of these films.  
### Question 2: Which movies have the highest average rating, considering only movies with at least 50 ratings. Limit the answer to 10
**Top 10 highest average rating movies:**
1. Close Shave, A (1995)|112 ratings|4.49 average rating
2. Wrong Trousers The (1993) ratings|118|4.47 average rating
3. Schindler's List (1993)|298 ratings|4.47 average rating
4. Casablanca (1942)|243 ratings|4.46 average rating
5. Wallace & Gromit: The Best of Aardman Animation (1996)|67 ratings|4.45 average rating
6. Shawshank Redemption, The (1994)|283 ratings|4.45 average rating
7. Usual Suspects, The (1995)|267 ratings|4.39 average rating
8. Rear Window (1954)|209 ratings|4.39 average rating
9. Star Wars (1977)|583 ratings|4.36 average rating
10. 12 Angry Men (1957)|125 ratings|4.34 average rating
## Observation for Question 2: 
1. Even though Star Wars was the most popular movie it got the least average rating score compared to other 9 movies. This suggests many people watched Star Wars, but not everyone liked it
2. The rest 9 movies in the list show low ratings compared to Top 10 Most-Rated Movies, but average rating is high. It seems not every popular movie is appreciated and liked by many people. Popularity does not always correlate with perceived quality. 
