-- 1
SELECT *
FROM books;

-- 2
-- Select unique authors from the books table
SELECT DISTINCT author
FROM books;

-- 3
-- Alias author so that it becomes unique_author
SELECT DISTINCT author AS unique_author
FROM books;

--4
-- Save the results of this query as a view called library_authors
CREATE VIEW library_authors AS
SELECT DISTINCT author AS unique_author
FROM books;

--5
-- Select the first 10 genres from books using PostgreSQL
SELECT genre FROM books
LIMIT 10; 
