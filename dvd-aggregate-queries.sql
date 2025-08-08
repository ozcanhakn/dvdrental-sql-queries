-- 1. film tablosunda rental_rate sütunundaki değerlerin ortalaması
SELECT AVG(rental_rate) AS avg_rental_rate
FROM film;

-- 2. film tablosunda filmlerden kaç tanesi 'C' karakteri ile başlar
SELECT COUNT(*) AS count_starting_with_c
FROM film
WHERE title LIKE 'C%';

-- 3. film tablosunda rental_rate değeri 0.99 olan en uzun filmin uzunluğu (length)
SELECT MAX(length) AS max_length_for_rental_rate_099
FROM film
WHERE rental_rate = 0.99;

-- 4. film tablosunda uzunluğu 150 dakikadan büyük olan filmlerde kaç farklı replacement_cost değeri var?
SELECT COUNT(DISTINCT replacement_cost) AS distinct_replacement_cost_count
FROM film
WHERE length > 150;
