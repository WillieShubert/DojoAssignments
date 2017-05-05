-- 1. What query would you run to get all the customers inside city_id = 312? 
-- Your query should return customer first name, last name, email, and address.

SELECT customer.first_name, customer.last_name, customer.email, customer.address FROM customer
LEFT JOIN address on customer.address_id = address.address_id
WHERE address.city_id = "312"


-- 2.What query would you run to get all comedy films? Your query should return film title, description, release year, rating, special features, and genre (category).

SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name as genre FROM film
LEFT JOIN film_catagory on film.film_id = film_category.film_id 
LEFT JOIN category on film_category.film_id  = category.category_id 
WHERE category.name = "comedy";

-- 3. What query would you run to get all the films joined by actor_id=5? 
-- Your query should return the film title, description, and release year.

SELECT film.title, film.description, film.release_year from film
JOIN film_actor on film.film_id = film_actor.film_id 
WHERE film_actor.actor_id = "5"

-- 4. What query would you run to get all the customers in store_id = 1 and inside these cities (1, 42, 312 and 459)? 
-- Your query should return customer first name, last name, email, and address.

SELECT customer.first_name, customer.last_name, customer.email, customer.address FROM customer
JOIN store on customer.store_id = store.store_id, address on address.id = store.address_id
WHERE  store.store_id = "1" and address.city_id = "42" 


-- 5. What query would you run to get all the films with a "rating = G" and "special feature = behind the scenes", joined by actor_id = 15? 
-- Your query should return the film title, description, release year, rating, and special feature. Hint: You may use LIKE function in getting the 'behind the scenes' part.
SELECT film.title, film.description, film.release_year, film.rating, film.special_features FROM film
JOIN film_actor on film.film_id = film_actor.film_id
WHERE film_actor.actor_id = "15" AND film.rating = "G"


-- 6. What query would you run to get all the actors that joined in the film_id = 369? 
-- Your query should return the film_id, title, actor_id, and actor_name.

SELECT film.film_id, 


-- 7. What query would you run to get all drama films with a rental rate of 2.99?
 -- Your query should return film title, description, release year, rating, special features, and genre (category).

select film.title, film.description, film.release_year

-- 8. What query would you run to get all the action films which are joined by SANDRA KILMER? 
-- Your query should return film title, description, release year, rating, special features, genre (category), and actor's first name and last name.