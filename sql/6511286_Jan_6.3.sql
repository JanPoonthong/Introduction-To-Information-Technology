SELECT first_name, last_name FROM customer 
where customer_id in
(SELECT customer_id 
FROM payment 
GROUP BY customer_id 
ORDER BY SUM (amount) 
DESC LIMIT 5);