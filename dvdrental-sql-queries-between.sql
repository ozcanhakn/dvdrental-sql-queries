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

-- YENİ SORGU SETİ - BETWEEN VE IN OPERATÖRLÜ SORGULAR

-- 6. film tablosunda bulunan tüm sütunlardaki verileri replacement cost değeri 
-- 12.99 dan büyük eşit ve 16.99 küçük olma koşuluyla sıralayınız (BETWEEN - AND yapısını kullanınız.)
SELECT * 
FROM film 
WHERE replacement_cost BETWEEN 12.99 AND 16.98
ORDER BY replacement_cost;

-- Not: 16.99 "küçük" olduğu için 16.98 kullandık (16.99 dahil değil)
-- Eğer 16.99 dahil olacaksa:
SELECT * 
FROM film 
WHERE replacement_cost >= 12.99 AND replacement_cost < 16.99
ORDER BY replacement_cost;

-- ==================================================================================

-- 7. actor tablosunda bulunan first_name ve last_name sütunlardaki verileri 
-- first_name 'Penelope' veya 'Nick' veya 'Ed' değerleri olması koşuluyla sıralayınız. 
-- (IN operatörünü kullanınız.)
SELECT first_name, last_name 
FROM actor 
WHERE first_name IN ('Penelope', 'Nick', 'Ed')
ORDER BY first_name, last_name;

-- Daha detaylı bilgi için actor_id de eklenebilir:
SELECT actor_id, first_name, last_name 
FROM actor 
WHERE first_name IN ('Penelope', 'Nick', 'Ed')
ORDER BY first_name, last_name;

-- ==================================================================================

-- 8. film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99, 2.99, 4.99 
-- VE replacement_cost 12.99, 15.99, 28.99 olma koşullarıyla sıralayınız. 
-- (IN operatörünü kullanınız.)
SELECT * 
FROM film 
WHERE rental_rate IN (0.99, 2.99, 4.99) 
  AND replacement_cost IN (12.99, 15.99, 28.99)
ORDER BY rental_rate, replacement_cost;

-- Alternatif: Sonuçları önce replacement_cost'a göre sıralamak için:
SELECT * 
FROM film 
WHERE rental_rate IN (0.99, 2.99, 4.99) 
  AND replacement_cost IN (12.99, 15.99, 28.99)
ORDER BY replacement_cost, rental_rate;

-- ==================================================================================
-- EK AÇIKLAMALAR:

-- BETWEEN operatörü:
-- BETWEEN a AND b = >= a AND <= b (her iki değer dahil)
-- Sayısal, tarih ve string değerlerde kullanılabilir

-- IN operatörü:
-- IN (value1, value2, value3) = value1 OR value2 OR value3
-- Çoklu değer kontrolü için ideal

-- NOT operatörü kullanımı:
-- "büyük OLMAYIP" = NOT (length > 50) = length <= 50
-- "OLMAYAN" = NOT IN veya != kullanılabilir

-- ORDER BY kullanımı:
-- ASC: Artan sıralama (varsayılan)
-- DESC: Azalan sıralama

-- Koşul önceliği:
-- AND operatörü OR'dan önce işlenir
-- Parantez kullanarak önceliği değiştirebiliriz

-- Performans İpuçları:
-- IN operatörü genellikle OR zincirinden daha hızlıdır
-- BETWEEN sürekli aralıklar için idealdir
