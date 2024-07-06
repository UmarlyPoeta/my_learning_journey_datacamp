# 1
    Practice with COUNT()

    As you've seen, COUNT(*) tells you how many records are in a table.     However, if you want to count the number of non-missing values in a     particular field, you can call COUNT() on just that field.

    Let's get some practice with COUNT()! You can look at the data in the   tables throughout these exercises by clicking on the table name in the    console.

## 1.1
    Count the total number of records in the people table, aliasing the result as count_records

## 1.2
    Count the number of records with a birthdate in the people table, aliasing the result as count_birthdate.

## 1.3
    Count the records for languages and countries in the films table; alias as count_languages and count_countries.


# 2
    SELECT DISTINCT

    Often query results will include many duplicate values. You can use the     DISTINCT keyword to select the unique values from a field.

    This might be useful if, for example, you're interested in knowing  which languages are represented in the films table. See if you can find  out what countries are represented in this table with the following  exercises.

## 2.1
    Return the unique countries represented in the films table using DISTINCT.

## 2.2
    Return the number of unique countries represented in the films table, aliased as count_distinct_countries

# 3
    Debugging errors

    Debugging is an essential skill for all coders, and it comes from making many mistakes and learning from them.

    In this exercise, you'll be given some buggy code that you'll need to fix.

## 3.1
    Debug and fix the SQL query provided.

## 3.2
    Find the two errors in this code; the same error has been repeated twice.

## 3.3
    Find the two bugs in this final query.


# 4
    Readable code is highly valued in the coding community and professional settings. Without proper formatting, code and results can be difficult to interpret. You'll often be working with other people that need to understand your code or be able to explain your results, so having a solid formatting habit is essential.

    In this exercise, you'll correct poorly written code to better adhere to SQL style standards.

    Adjust the sample code so that it is in line with standard practices.


# 5
    Using WHERE with numbers

    Filtering with WHERE allows you to analyze your data better. You may have a dataset that includes a range of different movies, and you need to do a case study on the most notable films with the biggest budgets. In this case, you'll want to filter your data to a specific budget range.

    Now it's your turn to use the WHERE clause to filter numeric values!

## 5.1
    Select the film_id and imdb_score from the reviews table and filter on scores higher than 7.0

## 5.2
    Select the film_id and facebook_likes of the first ten records with less than 1000 likes from the reviews table.

## 5.3
    Count how many records have a num_votes of at least 100,000; use the alias films_over_100K_votes

# 6
    Using WHERE with text

    WHERE can also filter string values.

    Imagine you are part of an organization that gives cinematography awards, and you have several international categories. Before you confirm an award for every language listed in your dataset, it may be worth seeing if there are enough films of a specific language to make it a fair competition. If there is only one movie or a significant skew, it may be worth considering a different way of giving international awards.

    Let's try this out!

    Select and count the language field using the alias count_spanish.
    Apply a filter to select only Spanish from the language field.


# 7
    Using AND

    The following exercises combine AND and OR with the WHERE clause. Using these operators together strengthens your queries and analyses of data.

    You will apply these new skills now on the films table.

## 7.1
    Select the title and release_year for all German-language films released before 2000

## 7.2
    Update the query from the previous step to show German-language films released after 2000 rather than before

## 7.3
    Select all details for German-language films released after 2000 but before 2010 using only WHERE and AND.

# 8
    Using OR

    This time you'll write a query to get the title and release_year of films released in 1990 or 1999, which were in English or Spanish and took in more than $2,000,000 gross.

# 9
    Using BETWEEN

    Let's use BETWEEN with AND on the films database to get the title and release_year of all Spanish-language films released between 1990 and 2000 (inclusive) with budgets over $100 million.

# 10
    LIKE and NOT LIKE

    The LIKE and NOT LIKE operators can be used to find records that either match or do not match a specified pattern, respectively. They can be coupled with the wildcards % and _. The % will match zero or many characters, and _ will match a single character.

    This is useful when you want to filter text, but not to an exact word.

    Do the following exercises to gain some practice with these keywords.

## 10.1
    Select the names of all people whose names begin with 'B'.

## 10.2
    Select the names of people whose names have 'r' as the second letter.

# 10.3
    Select the names of people whose names don't start with 'A'.

# 11
    
    Select country from the films table, and get the distinct count of certification aliased as certification_count.

    Group the results by country.

    Filter the unique count of certifications to only results greater than 10.

# 12
    Select the country and the average budget as average_budget, rounded to two decimal, from films.

    Group the results by country.

    Filter the results to countries with an average budget of more than one billion (1000000000).

    Sort by descending order of the average_budget

# 13
    t's time to use much of what you've learned in one query! This is good preparation for using SQL in the real world where you'll often be asked to write more complex queries since some of the basic queries can be answered by playing around in spreadsheet applications.

    In this exercise, you'll write a query that returns the average budget and gross earnings for films each year after 1990 if the average budget is greater than 60 million.

    
    Select the release_year for each film in the films table, filter for records released after 1990, and group by release_year.

    Modify the query to include the average budget aliased as avg_budget and average gross aliased as avg_gross for the results we have so far.

    Modify the query once more so that only years with an average budget of greater than 60 million are included.

    Finally, order the results from the highest average gross and limit to one.
