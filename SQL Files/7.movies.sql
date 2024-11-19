-- Select all columns from the movies table
SELECT * FROM moviesdb.movies;

-- Select specific columns (title and industry) from the movies table
SELECT title, industry FROM moviesdb.movies;

-- Switch to the moviesdb database
USE moviesdb;

-- Select all columns from the movies table where the industry is Bollywood
SELECT * FROM movies WHERE industry = "Bollywood";

-- Count the number of movies where the industry is Bollywood
SELECT COUNT(*) FROM movies WHERE industry = "Bollywood"; 

-- Select distinct industries from the movies table
SELECT DISTINCT industry FROM movies;

-- Wildcard search examples
-- Select all columns from the movies table where the title contains "THOR"
SELECT * FROM movies WHERE title LIKE "%THOR%";

-- Select all columns from the movies table where the title starts with "america"
SELECT * FROM movies WHERE title LIKE "america%";

-- Select all columns from the movies table where the title contains "america"
SELECT * FROM movies WHERE title LIKE "%america%";

-- Select all columns from the movies table where the studio is empty
SELECT * FROM movies WHERE studio="";

-- Select all columns from the movies table where the IMDb rating is greater than 9
SELECT * FROM movies WHERE imdb_rating > 9;

-- Select all columns from the movies table where the IMDb rating is between 6 and 8 (inclusive)
SELECT * FROM movies WHERE imdb_rating>=6 AND imdb_rating<=8;

-- Select all columns from the movies table where the IMDb rating is between 6 and 8 (inclusive)
SELECT * FROM movies WHERE imdb_rating BETWEEN 6 AND 8;

-- Select all columns from the movies table where the release year is 2022, 2019, or 2018
SELECT * FROM movies WHERE release_year=2022 OR release_year=2019 OR release_year=2018;

-- Select all columns from the movies table where the release year is in the list (2022, 2019, 2018)
SELECT * FROM movies WHERE release_year IN (2022,2019,2018);

-- Select all columns from the movies table where the IMDb rating is NULL
SELECT * FROM movies WHERE imdb_rating IS NULL;

-- Select all columns from the movies table where the industry is Bollywood, ordered by IMDb rating in descending order
SELECT * FROM movies WHERE industry = "Bollywood" ORDER BY imdb_rating DESC;

-- Select the top 5 movies from the Bollywood industry, ordered by IMDb rating in descending order
SELECT * FROM movies WHERE industry = "Bollywood" ORDER BY imdb_rating DESC LIMIT 5;

-- Select the top 5 movies from the Bollywood industry, ordered by IMDb rating in descending order, skipping the first result
SELECT * FROM movies WHERE industry = "Bollywood" ORDER BY imdb_rating DESC LIMIT 5 OFFSET 1;

-- Select the maximum IMDb rating from the Bollywood industry
SELECT MAX(imdb_rating) FROM movies WHERE industry = "Bollywood";

-- Select the minimum IMDb rating from the Bollywood industry
SELECT MIN(imdb_rating) FROM movies WHERE industry = "Bollywood";

-- Select the average IMDb rating from the Bollywood industry
SELECT AVG(imdb_rating) FROM movies WHERE industry = "Bollywood";

-- Select the average IMDb rating from the Bollywood industry, rounded to 2 decimal places
SELECT ROUND(AVG(imdb_rating),2) FROM movies WHERE industry = "Bollywood";

-- Select the average IMDb rating from the Bollywood industry, rounded to 2 decimal places, with an alias
SELECT ROUND(AVG(imdb_rating),2) as avg_rating FROM movies WHERE industry = "Bollywood";

-- Select the minimum, maximum, and average IMDb rating from the Bollywood industry, with aliases
SELECT MIN(imdb_rating) as min_rating, 
    MAX(imdb_rating) as max_rating, 
    ROUND(AVG(imdb_rating),2) as avg_rating 
FROM movies WHERE industry = "Bollywood";

-- Select the count of movies grouped by industry
SELECT industry,COUNT(*) FROM movies GROUP BY industry;

-- Select the count of movies grouped by studio
SELECT studio,COUNT(*) FROM movies GROUP BY studio;

-- Select the count of movies grouped by studio, ordered by count in descending order
SELECT studio,COUNT(*) as cnt FROM movies GROUP BY studio ORDER BY cnt DESC;

-- Select the count and average IMDb rating of movies grouped by studio, ordered by average rating in descending order
SELECT 
     studio,
     COUNT(studio) as cnt,
     ROUND(avg(imdb_rating),1) as avg_rating
FROM movies
GROUP BY studio
ORDER BY avg_rating DESC;

-- Select the count of movies grouped by release year, having more than 2 movies, ordered by count in descending order
SELECT release_year, COUNT(*) as movies_count
FROM movies
GROUP BY release_year
HAVING movies_count > 2
ORDER BY movies_count DESC;

-- Select all columns from the actors table
SELECT * FROM actors;

-- Select the current date
SELECT CURDATE();

-- Select the current year
SELECT YEAR(CURDATE());

-- Select all columns from the actors table and calculate the age based on the birth year
SELECT *, YEAR(CURDATE())-birth_year as age FROM actors;

-- Select all columns from the financials table
SELECT * FROM financials;

-- Select all columns from the financials table and calculate the profit (revenue - budget)
SELECT *, (revenue-budget) as profit FROM financials;

-- Select all columns from the financials table and convert revenue to INR if the currency is USD
SELECT *, 
IF(currency = "USD",revenue*77,revenue) as revenue_inr
FROM financials;

-- Select distinct units from the financials table
SELECT DISTINCT unit FROM financials;

-- Select all columns from the financials table and convert revenue to millions based on the unit
SELECT *,
CASE
    WHEN unit = "Thousands" THEN revenue/1000
    WHEN unit = "Billions" THEN revenue*1000
    ELSE revenue
END as revenue_mln
FROM financials;

-- Select specific columns from the movies and financials tables using an inner join
SELECT 
    movies.movie_id, title, budget, revenue, currency, unit
FROM movies
JOIN financials
ON movies.movie_id = financials.movie_id;

-- Select specific columns from the movies and financials tables using an inner join
SELECT 
    movies.movie_id, title, budget, revenue, currency, unit
FROM movies
INNER JOIN financials
ON movies.movie_id = financials.movie_id;

-- Select specific columns from the movies and financials tables using a left join
SELECT 
    movies.movie_id, title, budget, revenue, currency, unit
FROM movies
LEFT JOIN financials
ON movies.movie_id = financials.movie_id;

-- Select specific columns from the movies and financials tables using a right join
SELECT 
    movies.movie_id, title, budget, revenue, currency, unit
FROM movies
RIGHT JOIN financials
ON movies.movie_id = financials.movie_id;

-- Select specific columns from the movies and financials tables using a union of left and right joins
SELECT 
    movies.movie_id, title, budget, revenue, currency, unit
FROM movies
LEFT JOIN financials
ON movies.movie_id = financials.movie_id
UNION 
SELECT 
    movies.movie_id, title, budget, revenue, currency, unit
FROM movies
RIGHT JOIN financials
ON movies.movie_id = financials.movie_id;

-- Select specific columns from the movies and financials tables using a right join with the USING clause
SELECT 
    movie_id, title, budget, revenue, currency, unit
FROM movies
RIGHT JOIN financials
USING(movie_id);








