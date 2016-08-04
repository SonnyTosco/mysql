-- What query would you run to get all the customers inside city_id = 312? Your query should 
-- return customer first name, last name, email, and address.
SELECT first_name, last_name, email, address FROM customer
JOIN address ON address.address_id=customer.address_id
JOIN city ON city.city_id=address.city_id
WHERE city.city_id='312';

-- What query would you run to get all comedy films? Your query should return film title, 
-- description, release year, rating, special features, and genre.


-- What query would you run to get all the films joined by actor_id=5? Your query should 
-- return the film title, description, and release year.


-- What query would you run to get all the customers in store_id = 1 and inside these cities
-- (1, 42, 312 and 459)? Your query should return customer first name, last name, email, and address.


-- What query would you run to get all the films with a "rating = G" and "special feature = behind the scenes", 
-- joined by actor_id = 15? Your query should return the film title, description, release year, rate, 
-- and special feature. Hint: You may use LIKE function in getting the 'behind the scenes' part.


-- What query would you run to get all the actors that joined in the film_id = 369? 
-- Your query should return the film_id, title, actor_id, and actor_name.


-- What query would you run to get all drama films with a rental rate of 2.99? Your query should return 
-- film title, description, release year, rating, special features, and genre.


-- What query would you run to get all the action films which are joined by SANDRA KILMER? 
-- Your query should return film title, description, release year, rating, special features, genre, 
-- and actor's first name and last name.