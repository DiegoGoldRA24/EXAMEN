use sakila;

-- 1
select
concat(customer.first_name,' ',customer.last_name) AS CLIENTE,
address.phone AS TELEFONO,
customer.email AS CORREO_ELECTRONICO, 
address.address AS DIRECCION,
address.district AS DISTRITO,
country.country AS PAIS
from customer
inner join address on customer.address_id = address.address
inner join city on address.city_id = city.city_id
inner join country on city.country_id = country.country_id
order by country asc;

-- 2
select
film.title AS PELICULA,
concat(actor.first_name,'',actor.last_name) AS ACTOR,
film.description AS DESCRIPCION,
language.name AS IDIOMA
from film
inner join language on film.language_id = language.language_id
inner join film_actor on film.film_id = film_actor.film_id
inner join actor on film_actor.actor_id = actor.actor_id
order by film.title asc;