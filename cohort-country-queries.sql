-- 1. country tablosunda 'A' ile başlayıp 'a' ile biten ülkeler
SELECT country
FROM country
WHERE country LIKE 'A%a';

-- 2. country tablosunda en az 6 karakter uzunluğunda ve 'n' ile biten ülkeler
SELECT country
FROM country
WHERE LENGTH(country) >= 6
  AND country LIKE '%n';

-- 3. film tablosunda en az 4 adet 'T' (büyük/küçük fark etmeden) içeren filmler
SELECT title
FROM film
WHERE LENGTH(LOWER(title)) - LENGTH(REPLACE(LOWER(title), 't', '')) >= 4;

-- 4. film tablosunda 'C' ile başlayan, uzunluğu > 90 ve rental_rate = 2.99 olan filmler
SELECT *
FROM film
WHERE title LIKE 'C%'
  AND length > 90
  AND rental_rate = 2.99;
