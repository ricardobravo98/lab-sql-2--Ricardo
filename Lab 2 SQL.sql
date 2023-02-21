# In this lab, you will be using the Sakila database of movie rentals.
USE sakila;

# Select all the actors with the first name ‘Scarlett’.
SELECT * 
FROM actor 
WHERE first_name = 'Scarlett';

# Select all the actors with the last name ‘Johansson’.
SELECT * 
FROM actor 
WHERE last_name = 'Johansson';

# How many films (movies) are available for rent?
SELECT COUNT(*) 
FROM film;

# How many films have been rented?
SELECT COUNT(*) 
FROM rental;

# What is the shortest and longest rental period?
SELECT 
MIN(rental_duration),
MAX(rental_duration)
FROM film;

# What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT 
MIN(length) AS min_duration,
MAX(length) AS max_duration
FROM film;

# What's the average movie duration?
SELECT AVG(length) 
FROM film;

# What's the average movie duration expressed in format (hours, minutes)?
SELECT 
AVG(length) / 60,
AVG(length) % 60
FROM film;

# How many movies longer than 3 hours?
SELECT COUNT(*)
FROM film 
WHERE length > 180;

# Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT
CONCAT(UPPER(LEFT(first_name,1)), LOWER(SUBSTR(first_name,2))) as first_name,
UPPER(last_name) as last_name,
LOWER(email) as email
FROM customer;

# What's the length of the longest film title?
SELECT MAX(LENGTH(title))
FROM film;