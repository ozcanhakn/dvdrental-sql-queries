-- 1. Ortalama film uzunluğundan (length) daha uzun kaç film var?
SELECT COUNT(*) AS count_above_avg_length
FROM film
WHERE length > (SELECT AVG(length) FROM film);

-- 2. En yüksek rental_rate değerine sahip kaç tane film var?
SELECT COUNT(*) AS count_max_rental_rate
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

-- 3. En düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri listele
SELECT *
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
  AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

-- 4. Payment tablosunda en fazla sayıda alışveriş yapan müşterileri (customer) sıralama
SELECT customer_id, COUNT(*) AS payment_count
FROM payment
GROUP BY customer_id
ORDER BY payment_count DESC;
