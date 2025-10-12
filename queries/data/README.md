# Data Source
**Dataset** MovieLens 100K 
This dataset consists of: 
* 100,000 ratings (1-5) from 943 users on 1682 movies. 
* Each user has rated at least 20 movies.
* Simple demographic info for the users (age, gender, occupation, zio)
* Data collection period is seven months, from September 19th 1997 through April 22nd, 1998
* The data has been cleaned up - users who had less than 20 ratings or did not have complete demographic information were removed from this data set.
## Files
- 'u.data' - Ratings data (100,000 ratings) by 943 users on 1682 items. Each user has rated at least 20 movies. Users and items are numbered consecutively from 1. The data is randomly ordered. 
user id | item id | rating | timestamp
- 'u.item' - Movie information
This is a tab separated list of: 
 movie id | movie title | release date | video release date |
              IMDb URL | unknown | Action | Adventure | Animation |
              Children's | Comedy | Crime | Documentary | Drama | Fantasy |
              Film-Noir | Horror | Musical | Mystery | Romance | Sci-Fi |
              Thriller | War | Western |
 The movie ids are the ones used in the u.data data set.
- 'u.user' - User demographic information
Demographic information about the users; this is a tab
              separated list of
              user id | age | gender | occupation | zip code
              The user ids are the ones used in the u.data data set.
## Note
Data files are not uploaded to Github due to size. Download from the source link here (https://grouplens.org/datasets/movielens/100k/)
