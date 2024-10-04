/*  IMDB DATASET */

/* Q1. FETCH MOVIES FROM BOLLYWOOD INDUSTRY WITH THEIR IMDB RATING  */

select movie_id, title, industry, imdb_rating 
from movies
where industry = 'Bollywood';

/* Q2. FETCH TOP 5 HIGHEST RATED BOLLYWOOD MOVIES FROM DATABASE */

select movie_id, title, industry, imdb_rating
from movies
where industry = 'Bollywood'
order by imdb_rating desc
limit 5;

/* Q3. FETCH THE HIGHEST RATED BOLLYWOOD MOVIES FROM YEAR 2022 */

select movie_id, title, industry, release_year, imdb_rating
from movies
where industry = 'Bollywood' and release_year = 2022;

/* Q4. FETCH THE MOVIES OF MARVEL STUDIOS WITH THEIR IMDB RATING */

select movie_id, title, studio, imdb_rating
from movies
where studio = 'Marvel Studios';

/* Q5. FETCH TOP 10 HIGHEST RATED MOVIES WITH THEIR LANGUAGES. */

select m.movie_id, m.title, m.imdb_rating, l.name
from movies as m
inner join languages as l on m.language_id = l.language_id
order by imdb_rating desc
limit 10;

/* Q6. HOW MANY BOLLYWOOD AND HOLLYWOOD MOVIES ARE AVAILABLE IN 
DATABASE? */

select count(industry) , industry
from movies
group by industry;


/* Q7. HOW MANY MOVIES FROM EACH STUDIOS ARE AVAILABLE IN 
DATABASE? */

select count(studio) , studio
from movies
group by studio;

/* Q8. HOW MANY MOVIES FROM EACH STUDIOS IN BOLLYWOOD ARE 
AVAILABLE IN DATABASE? */

select count(studio) , studio, industry
from movies
where industry = 'bollywood'
group by studio;

/* Q9. FETCH DETAILS OF ALL MOVIES OF THOR FRANCHISE */

select * from movies
where title like '%Thor:%';

/* Q10.FETCH THE DETAILS OF ALL MOVIES OF CAPTAIN AMERICA */

select * from movies
where title like '%Captain America:%';

/* Q11.FETCH ALL MOVIES OF SHAHRUKH KHAN WITH THEIR IMDB RATING AND 
ACTOR NAME IN DATABASE */

select m.movie_id, m.title, m.imdb_rating, a.name
from movies as m
inner join movie_actor as ma on m.movie_id = ma.movie_id
inner join actors as a on ma.actor_id = a.actor_id
where a.name = 'Shah Rukh Khan';

/* Thank You :) */
