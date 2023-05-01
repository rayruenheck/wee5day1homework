-- How many actors are there with the last name ‘Wahlberg’?

SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';

-- 2

--How many payments were made between $3.99 and $5.99?
SELECT amount, count(amount) AS amount_count
FROM payment
WHERE amount BETWEEN 3.99 AND 6.99
GROUP BY amount;

-- 6624

--What film does the store have the most of? (search in inventory)
SELECT film_id, count(film_id)
FROM inventory
GROUP BY film_id;

-- 72

--How many customers have the last name ‘William’?

SELECT first_name, last_name
FROM customer
WHERE last_name = 'William';
-- 0

--What store employee (get the id) sold the most rentals?

SELECT staff_id, count(staff_id)
FROM payment
GROUP BY staff_id;

-- 2

--How many different district names are there?
SELECT count(city)
FROM city

-- 600

--What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, count(film_id)
FROM film_actor
GROUP BY film_id

-- 508 with 15

--From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT count(last_name)
FROM customer
WHERE last_name LIKE '%es'

--21

--How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
SELECT amount, count(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING count(amount) > 250
 -- 3

--Within the film table, how many rating categories are there? And what rating has the most
--movies total?
SELECT rating, count(rating)
FROM film
GROUP BY rating
--5 pg-13