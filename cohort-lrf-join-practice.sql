-- 1. city ile country tablolarını LEFT JOIN ile şehir ve ülke isimlerini listele
SELECT city.city, country.country
FROM city
LEFT JOIN country ON city.country_id = country.country_id;

-- 2. customer ile payment tablolarını RIGHT JOIN ile payment_id ve müşteri isimlerini listele
SELECT payment.payment_id, customer.first_name, customer.last_name
FROM customer
RIGHT JOIN payment ON payment.customer_id = customer.customer_id;

-- 3. customer ile rental tablolarını FULL JOIN ile rental_id ve müşteri isimlerini listele
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM customer
FULL JOIN rental ON rental.customer_id = customer.customer_id;
