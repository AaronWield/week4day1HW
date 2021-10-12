-- SELECT ALL records from a table called actor
SELECT * 
FROM actor;

-- SELECT the first and last names of every actor in actor table
SELECT first_name, last_name
FROM actor;

-- Query the first_name and last_name column where the first_name equals 'Nick'
-- using WHERE clause
SELECT first_name, last_name FROM actor 
WHERE first_name = 'Nick';

-- Query the first_name and last_name column where the first_name equals 'Nick'
-- using LIKE clause
SELECT first_name, last_name FROM actor 
WHERE first_name LIKE 'Nick';

-- Query for all first_name data that begins with letter J
-- using LIKE/WHERE and wildcard operator
SELECT first_name, last_name FROM actor 
WHERE first_name LIKE 'J%';

-- Query name data for actors with 3-letter names beginning with 'K' 
SELECT first_name, last_name FROM actor 
WHERE first_name LIKE 'K__';

-- Query name data for actors starting with 'K' and ending in 'th'
SELECT first_name, last_name FROM actor 
WHERE first_name LIKE 'K%th';

-- Comparison Operators for numerical values:
-- Greater Than (>) -- Less than (<)
-- Greater or Equal (>=) -- Less or Equal (<=)
-- Not Equal (<>)

-- Exploratory 	query into a new table
SELECT *
from payment;

-- Query for data that shows customers who paid an amount greater than $10
SELECT customer_id, amount FROM payment
WHERE amount > 10;

-- Query for data that shows customers who paid an amount less than $7.99
SELECT customer_id, amount FROM payment
WHERE amount < 7.99;

-- Query for data that shows customers who paid an amount less than or equal to $7.99
SELECT customer_id, amount FROM payment
WHERE amount <= 7.99;

-- Can use ORDER by clause to sort output by numerical value (ASC/DESC)
SELECT customer_id, amount FROM payment
WHERE amount > 10
ORDER BY amount DESC;

-- Use BETWEEN clause to find amounts btwn X and Y 
SELECT customer_id, amount FROM payment
WHERE amount BETWEEN 9 and 11;

-- Find all payments that are not X
SELECT customer_id, amount FROM payment
WHERE amount <> 2.99
ORDER BY amount;

-- SQL Aggregators ==> SUM(), AVG(), COUNT(), MIN(), MAX()

-- Display sum (or any SQL aggregator) of every amount paid greater than X
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99; 

SELECT AVG(amount) FROM payment WHERE amount > 5.99;
SELECT COUNT(amount) FROM payment WHERE amount > 5.99;
SELECT MIN(amount) FROM payment WHERE amount > 5.99;
SELECT MAX(amount) FROM payment WHERE amount > 5.99;

-- Find all unique payment amounts above X
SELECT DISTINCT amount
FROM payment
WHERE amount > 5.99;

--using aliases to rename aggregated column output
SELECT MIN(amount) as min_payment
FROM payment 
WHERE amount > 5.99;
SELECT MAX(amount) as max_payment FROM payment 
WHERE amount < 7.99;

--GROUPBY comes next:
-- Query to display all amounts equal to X
SELECT amount
FROM payment
WHERE amount = 7.99;

-- Query to display diff amounts grouped together
--and count of each amount
SELECT amount, COUNT(amount)
from payment 
GROUP BY amount 
ORDER BY amount;

-- Query to display customer_id and total amount of $ spent
SELECT customer_id, SUM(amount)
FROM payment
GROUP by customer_id
ORDER BY SUM(amount) DESC;

-- Using HAVING, query to display customer_ids that show up more than X
-- similar to WHERE
SELECT customer_id, COUNT(customer_id)
FROM payment
GROUP BY customer_id
HAVING COUNT(customer_id) > 30
ORDER BY customer_id;

-- Random query prompt
SELECT *
FROM film;

-- Write a query to display the total count of films 
--that start with the letter A
SELECT COUNT(title)
FROM film
WHERE title LIKE 'A%';

-- Write a query to display all customer id's that spend over X last month
SELECT customer_id, sum(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;


select *
from address
where address_id = 346;


