-- Week 5  - Monday Questions 
-- 1. How many actors are there with the last name ‘Wahlberg’? 
SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';
-- Answer = 2

-- 2. How many payments were made between $3.99 and $5.99?  
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;
-- Answer = 5607

-- 3. What film does the store have the most of? (search in inventory) 
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY count(film_id) DESC;
-- Answer = Store has 8 copies of 72 different films

-- 4. How many customers have the last name ‘William’?    
SELECT last_name
FROM customer
WHERE last_name = 'William';
-- Answer = Zero

-- 5. What store employee (get the id) sold the most rentals?
SELECT COUNT(staff_id)
FROM rental
GROUP BY staff_id
ORDER BY COUNT(staff_id) DESC;
-- Answer = Mike Hillyer, staff_id 1

-- 6. How many different district names are there?
SELECT DISTINCT district
FROM address
GROUP BY district
ORDER BY district;
-- Answer = 377 (378 listed but 1 blank)

-- 7. What film has the most actors in it? (use film_actor table and get film_id)    
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;
-- Answer = Lambs Cincinatti (film_id 508), 15 different actors

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)    
SELECT last_name, store_id
FROM customer
WHERE last_name LIKE '%es' 
GROUP BY last_name, store_id
ORDER BY store_id;
-- Answer = 13

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers 
--with ids between 380 and 430? (use group by and having > 250)    
SELECT * FROM payment;

SELECT amount, customer_id
FROM payment
GROUP BY amount, customer_id
HAVING customer_id between 380 and 430 
order by customer_id, amount;

select amount, count(amount)
from payment
group by amount
HAVING count(amount) > 250
order by amount;

select count(amount), customer_id
from payment
where customer_id between 380 and 430
group by customer_id
HAVING count(amount) > 250
order by count(amount);

-- I can not figure this one out

-- -- 10.  Within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT distinct rating FROM film;
SELECT rating, count(rating)
FROM film
GROUP BY rating
ORDER BY count(rating) desc;
-- Answer = 5 categories. PG-13 with 223 ratings.


