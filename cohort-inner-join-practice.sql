-- 1. city ile country tablosunu INNER JOIN ile şehir ve ülke isimlerini listele
SELECT city.city, country.country
FROM city
INNER JOIN country ON city.country_id = country.country_id;

-- 2. customer ile payment tablosunu payment_id ile INNER JOIN yap, müşteri isimlerini listele
SELECT payment.payment_id, customer.first_name, customer.last_name
FROM payment
INNER JOIN customer ON payment.customer_id = customer.customer_id;

-- 3. customer ile rental tablosunu rental_id ile INNER JOIN yap, müşteri isimlerini listele
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM rental
INNER JOIN customer ON rental.customer_id = customer.customer_id;
