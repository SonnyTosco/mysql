-- What query would you run to get all the customers inside city_id = 312? Your query should 
-- return customer first name, last name, email, and address.
-- SELECT first_name, last_name, email, address FROM customer
-- JOIN address ON address.address_id=customer.address_id
-- JOIN city ON city.city_id=address.city_id
-- WHERE city.city_id='312';
-- CORRECT verified by answer key

-- What query would you run to get all comedy films? Your query should return film title, 
-- description, release year, rating, special features, and genre.
-- SELECT film.film_id, film.title, film.description, film.release_year, film.rating, film.special_features, category.name AS genre FROM film
-- JOIN film_category ON film_category.film_id=film.film_id
-- JOIN category ON category.category_id=film_category.category_id
-- WHERE category.name='Comedy';
-- CORRECT per answer key


-- What query would you run to get all the films joined by actor_id=5? Your query should
-- return the film title, description, and release year.
-- SELECT actor.actor_id, actor.first_name, actor.last_name, film.film_id, title, description, release_year FROM film
-- JOIN film_actor ON film_actor.film_id=film.film_id
-- JOIN actor ON film_actor.actor_id=actor.actor_id
-- WHERE actor.actor_id='5';
-- CORRECT verified per answer key


-- What query would you run to get all the customers in store_id = 1 and inside these cities
-- (1, 42, 312 and 459)? Your query should return customer first name, last name, email, and address.
-- SELECT store.store_id, city.city_id, customer.first_name, customer.last_name, customer.email, customer.address_id FROM customer
-- JOIN store ON store.store_id=customer.store_id
-- JOIN address ON customer.address_id=address.address_id
-- JOIN city ON address.city_id=city.city_id
-- WHERE store.store_id='1' AND city.city_id IN ('1', '42', '312', '459')
-- CORRECT and verified per answer key


-- What query would you run to get all the films with a "rating = G" and "special feature = behind the scenes", 
-- joined by actor_id = 15? Your query should return the film title, description, release year, rate, 
-- and special feature. Hint: You may use LIKE function in getting the 'behind the scenes' part.
-- SELECT DISTINCT(film.title), film.description, film.release_year, film.rating, film.special_features FROM film
-- JOIN film_actor ON film_actor.film_id=film.film_id
-- JOIN actor ON film_actor.actor_id=actor.actor_id
-- WHERE film.rating='G' AND film.special_features LIKE 'behind%' AND actor.actor_id='15';
-- looks right per the conditions, but doesn't have three titles listed like the answer key


-- What query would you run to get all the actors that joined in the film_id = 369? 
-- Your query should return the film_id, title, actor_id, and actor_name.
-- SELECT film.film_id, film.title, actor.actor_id, actor.first_name, actor.last_name FROM film
-- JOIN film_actor ON film_actor.film_id=film.film_id
-- JOIN actor ON film_actor.actor_id=actor.actor_id
-- WHERE film.film_id='369';
-- Correct per answer key


-- What query would you run to get all drama films with a rental rate of 2.99? Your query should return 
-- film title, description, release year, rating, special features, and genre.
-- SELECT film.film_id, film.title, film.description, film.release_year, film.rating, film.special_features, film.rental_rate, category.name AS genre FROM film
-- JOIN film_category ON film_category.film_id=film.film_id
-- JOIN category ON category.category_id=film_category.category_id
-- WHERE rental_rate='2.99' AND category.name='Drama';
-- -- CORRECT per the answer key


-- What query would you run to get all the action films which are joined by SANDRA KILMER? 
-- Your query should return film title, description, release year, rating, special features, genre, 
-- and actor's first name and last name.
-- SELECT film.film_id, film.title, film.description, film.release_year, film.rating, film.special_features,
-- category.name AS genre, actor.first_name, actor.last_name FROM film
-- JOIN film_category ON film_category.film_id=film.film_id
-- JOIN category ON category.category_id=film_category.category_id
-- JOIN film_actor ON film_actor.film_id=film.film_id
-- JOIN actor ON film_actor.actor_id=actor.actor_id
-- WHERE actor.first_name='Sandra' AND actor.last_name='Kilmer' AND category.name='Action';
-- CORRECT per answer key