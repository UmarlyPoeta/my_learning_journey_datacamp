-- 1

-- 1.1
-- Count the number of records in the people table
SELECT COUNT(*) AS count_records FROM people

-- 1.2
-- Count the number of birthdates in the people table
SELECT COUNT(birthdate) AS count_birthdate FROM people;

-- 1.3
-- Count the records for languages and countries represented in the films table
SELECT COUNT(language) AS count_languages,COUNT(country) AS count_countries FROM films;


-- 2

-- 2.1
-- Return the unique countries from the films table
SELECT DISTINCT country FROM films

-- 2.2
-- Count the distinct countries from the films table
SELECT  COUNT(DISTINCT country) AS count_distinct_countries FROM films


-- 3

-- 3.1
-- Debug this code
SELECT certification
FROM films
LIMIT 5;

-- 3.2
-- Debug this code
SELECT film_id, imdb_score, num_votes
FROM reviews;

-- 3.3
-- Debug this code
SELECT COUNT(birthdate) AS count_birthdays
FROM people;

-- 4
-- Rewrite this query
SELECT person_id, role
FROM roles 
LIMIT 10;

-- 5

-- 5.1
-- Select film_ids and imdb_score with an imdb_score over 7.0
SELECT film_id, imdb_score
FROM reviews
WHERE imdb_score > 7.0;

-- 5.2
-- Select film_ids and facebook_likes for ten records with less than 1000 likes 
SELECT film_id, facebook_likes
FROM reviews
WHERE facebook_likes < 1000
LIMIT 10;

-- 5.3
-- Count the records with at least 100,000 votes
SELECT COUNT(num_votes) AS films_over_100K_votes
FROM reviews
WHERE num_votes >= 100000;

-- 6
-- Count the Spanish-language films
SELECT COUNT(language) AS count_spanish
FROM films
WHERE language = 'Spanish';

-- 7

-- 7.1
-- Select the title and release_year for all German-language films released before 2000
SELECT title, release_year
FROM films
WHERE language = 'German' AND release_year < 2000;

-- 7.2
-- Update the query to see all German-language films released after 2000
SELECT title, release_year
FROM films
WHERE release_year > 2000
	AND language = 'German';

-- 7.3
-- Select all records for German-language films released after 2000 and before 2010
SELECT *
FROM films
WHERE release_year > 2000 AND release_year < 2010 AND language = 'German';


-- 8
SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
	AND (language = 'English' OR language = 'Spanish')
-- Filter films with more than $2,000,000 gross
	AND gross > 2000000;

-- 9
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
	AND budget > 100000000
-- Amend the query to include Spanish or French-language films
	AND (language = 'Spanish' OR language = 'French');

-- 10

-- 10.1
-- Select the names that start with B
SELECT name
FROM people
WHERE name LIKE 'B%';

-- 10.2
SELECT name
FROM people
-- Select the names that have r as the second letter
WHERE name LIKE '_r%'

-- 10.3
SELECT name
FROM people
-- Select names that don't start with A
WHERE name NOT LIKE 'A%';

-- 11
-- Select the country and distinct count of certification as certification_count
SELECT country, COUNT(DISTINCT certification) AS certification_count
FROM films
-- Group by country
GROUP BY country
-- Filter results to countries with more than 10 different certifications
HAVING COUNT(DISTINCT certification) > 10;

-- 12
-- Select the country and average_budget from films
SELECT country, ROUND(AVG(budget),2) AS average_budget
FROM films
-- Group by country
GROUP BY country
-- Filter to countries with an average_budget of more than one billion
HAVING AVG(budget) > 1000000000
-- Order by descending order of the aggregated budget
ORDER BY average_budget DESC;


-- 13
SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000
-- Order the results from highest to lowest average gross and limit to one
ORDER BY avg_gross DESC
LIMIT 1;