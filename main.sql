--take a look at the startups table
SELECT *
FROM startups;

--total number of all companies in this table
SELECT COUNT(*)
FROM startups;

--total value of all companies in this table
SELECT SUM(valuation)
FROM startups;

--maximum amount of money raised during ‘Seed’ stage.
SELECT MAX(raised)
FROM startups
WHERE stage = 'Seed';

--year oldest company on the list founded
SELECT MIN(founded)
FROM startups;

--Return the average valuation.
SELECT AVG(valuation)
FROM startups;

-- Return the average valuation, in each category
SELECT category, AVG(valuation)
FROM startups
GROUP BY category;

--Return the average valuation, in each category. Round the averages to two decimal places.
SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category;

--Return the average valuation, in each category, order the list from highest averages to lowest.

SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY 1
ORDER BY 2 DESC;

-- return the name of each category with the total number of companies that belong to it.
SELECT category, COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT(*) > 3
ORDER BY 2 DESC;

--the average size of a startup in each location
SELECT location, AVG(employees)
FROM startups
GROUP BY location;

--the average size of a startup in each location, with average sizes above 500?
SELECT location, AVG(employees)
FROM startups
GROUP BY location
HAVING AVG(employees) > 500;

