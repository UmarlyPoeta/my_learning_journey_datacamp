-- What is the number of distinct countries present in the database?
-- num_distinct_countries 
-- Write your query here...
SELECT COUNT(DISTINCT country_code) AS total_distinct_countries 
FROM public.international_debt;


-- What country has the highest amount of debt?
-- highest_debt_country 
-- Write your query here... 
SELECT country_name, SUM(debt) AS total_debt
FROM public.international_debt
GROUP BY country_name
ORDER BY total_debt DESC
LIMIT 1;

-- What country has the lowest amount of repayments?
-- lowest_principal_repayment 
-- Write your query here...
SELECT country_name, indicator_name, SUM(debt) AS lowest_repayment
FROM public.international_debt
WHERE indicator_code = 'DT.AMT.DLXF.CD'
GROUP BY country_name, indicator_name
ORDER BY lowest_repayment
LIMIT 1;