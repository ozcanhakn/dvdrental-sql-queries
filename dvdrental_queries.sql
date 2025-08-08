-- DVD RENTAL VERİTABANI SQL SORGU ÖRNEKLERİ

-- 1. film tablosunda bulunan title ve description sütunlarındaki verileri sıralayınız.
SELECT title, description 
FROM film 
ORDER BY title;

-- Alternatif: Alfabetik sıralama için
SELECT title, description 
FROM film 
ORDER BY title ASC;

-- ==================================================================================

-- 2. film tablosunda bulunan tüm sütunlardaki verileri film uzunluğu (length) 
-- 60 dan büyük VE 75 ten küçük olma koşullarıyla sıralayınız.
SELECT * 
FROM film 
WHERE length > 60 AND length < 75
ORDER BY length;

-- Alternatif BETWEEN kullanımı (61-74 arası):
SELECT * 
FROM film 
WHERE length BETWEEN 61 AND 74
ORDER BY length;

-- ==================================================================================

-- 3. film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99 VE 
-- replacement_cost 12.99 VEYA 28.99 olma koşullarıyla sıralayınız.
SELECT * 
FROM film 
WHERE rental_rate = 0.99 
  AND (replacement_cost = 12.99 OR replacement_cost = 28.99)
ORDER BY rental_rate, replacement_cost;

-- Alternatif IN kullanımı:
SELECT * 
FROM film 
WHERE rental_rate = 0.99 
  AND replacement_cost IN (12.99, 28.99)
ORDER BY rental_rate, replacement_cost;

-- ==================================================================================

-- 4. customer tablosunda bulunan first_name sütunundaki değeri 'Mary' olan 
-- müşterinin last_name sütunundaki değeri nedir?
SELECT last_name 
FROM customer 
WHERE first_name = 'Mary';

-- Daha detaylı bilgi için:
SELECT first_name, last_name, email 
FROM customer 
WHERE first_name = 'Mary';

-- ==================================================================================

-- 5. film tablosundaki uzunluğu(length) 50 ten büyük OLMAYIP aynı zamanda 
-- rental_rate değeri 2.99 veya 4.99 OLMAYAN verileri sıralayınız.
SELECT * 
FROM film 
WHERE length <= 50 
  AND rental_rate NOT IN (2.99, 4.99)
ORDER BY length, rental_rate;

-- Alternatif yazım:
SELECT * 
FROM film 
WHERE NOT (length > 50) 
  AND NOT (rental_rate = 2.99 OR rental_rate = 4.99)
ORDER BY length, rental_rate;

-- ==================================================================================
-- EK AÇIKLAMALAR:

-- NOT operatörü kullanımı:
-- "büyük OLMAYIP" = NOT (length > 50) = length <= 50
-- "OLMAYAN" = NOT IN veya != kullanılabilir

-- ORDER BY kullanımı:
-- ASC: Artan sıralama (varsayılan)
-- DESC: Azalan sıralama

-- Koşul önceliği:
-- AND operatörü OR'dan önce işlenir
-- Parantez kullanarak önceliği değiştirebiliriz
