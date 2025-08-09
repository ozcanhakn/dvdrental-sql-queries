-- 1. actor ve customer tablolarındaki distinct first_name değerlerini sıralayalım (birleşim)
SELECT DISTINCT first_name FROM actor
UNION
SELECT DISTINCT first_name FROM customer;

-- 2. actor ve customer tablolarındaki first_name değerlerinin kesişimi (ortak olanlar), distinct
SELECT DISTINCT first_name FROM actor
INTERSECT
SELECT DISTINCT first_name FROM customer;

-- 3. actor tablosunda olup customer tablosunda olmayan distinct first_name değerleri
SELECT DISTINCT first_name FROM actor
EXCEPT
SELECT DISTINCT first_name FROM customer;

-- 4. actor ve customer tablolarındaki tüm (tekrar eden) first_name değerlerini sıralayalım (birleşim)
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer;

-- 5. actor ve customer tablolarındaki tüm (tekrar eden) first_name değerlerinin kesişimi
-- Not: INTERSECT zaten distinct sonuç verir, tekrar eden için özel çözüm:
SELECT first_name FROM actor
INTERSECT ALL
SELECT first_name FROM customer;

-- 6. actor tablosunda olup customer tablosunda olmayan tüm (tekrar eden) first_name değerleri
SELECT first_name FROM actor
EXCEPT ALL
SELECT first_name FROM customer;
