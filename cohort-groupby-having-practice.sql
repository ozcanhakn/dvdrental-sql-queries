-- 1. film tablosunda filmleri rating değerlerine göre grupla
SELECT rating, COUNT(*) AS film_count
FROM film
GROUP BY rating;

-- 2. film tablosunda replacement_cost'a göre gruplandır, film sayısı 50'den fazla olanları seç ve sıralar
SELECT replacement_cost, COUNT(*) AS film_count
FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50
ORDER BY film_count DESC;

-- 3. customer tablosunda store_id'ye göre müşteri sayıları
SELECT store_id, COUNT(*) AS customer_count
FROM customer
GROUP BY store_id;

-- 4. city tablosunda country_id'ye göre gruplandır, en fazla şehir sayısı olan country_id ve şehir sayısı
SELECT country_id, COUNT(*) AS city_count
FROM city
GROUP BY country_id
ORDER BY city_count DESC
LIMIT 1;
