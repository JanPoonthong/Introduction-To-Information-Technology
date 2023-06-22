SELECT title from film
where rental_rate in (SELECT DISTINCT rental_rate FROM film order by rental_rate DESC LIMIT 1 OFFSET 1);