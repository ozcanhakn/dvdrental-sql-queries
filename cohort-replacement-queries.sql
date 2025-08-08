-- 1. film tablosunda replacement_cost sütunundaki birbirinden farklı değerleri sıralayın
SELECT DISTINCT replacement_cost
FROM film;

-- 2. film tablosunda replacement_cost sütununda birbirinden farklı kaç tane veri var?
SELECT COUNT(DISTINCT replacement_cost) AS distinct_replacement_cost_count
FROM film;

-- 3. film tablosunda title 'T' ile başlayan ve rating 'G' olan kaç film var?
SELECT COUNT(*) AS t_start_and_rating_g_count
FROM film
WHERE title LIKE 'T%'
  AND rating = 'G';

-- 4. country tablosunda 5 karakter uzunluğunda kaç ülke var?
SELECT COUNT(*) AS country_5_char_count
FROM country
WHERE LENGTH(country) = 5;

-- 5. city tablosunda şehir isimlerinden 'R' veya 'r' ile biten kaç tane var?
SELECT COUNT(*) AS city_ending_with_r_count
FROM city
WHERE city ILIKE '%r';
