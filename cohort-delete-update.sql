-- ==================================================================================
-- EMPLOYEE TABLOSU - KAPSAMLI SQL İŞLEMLERİ
-- Test veritabanında employee tablosu oluşturma, veri ekleme, güncelleme ve silme
-- ==================================================================================

-- TEST VERİTABANI OLUŞTURMA (İsteğe bağlı)
-- CREATE DATABASE test;
-- \c test; -- PostgreSQL için veritabanına bağlanma

-- ==================================================================================
-- 1. EMPLOYEE TABLOSUNU OLUŞTURMA
-- ==================================================================================

-- Eğer tablo varsa önce sil
DROP TABLE IF EXISTS employee;

-- Employee tablosunu oluştur
CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    birthday DATE,
    email VARCHAR(100) UNIQUE
);

-- Tablo yapısını kontrol et
\d employee; -- PostgreSQL için
-- DESCRIBE employee; -- MySQL için

-- ==================================================================================
-- 2. MOCKAROO SERVİSİNDEN OLUŞTURULAN 50 ADET VERİ
-- ==================================================================================

INSERT INTO employee (id, name, birthday, email) VALUES
(1, 'Ahmet Yılmaz', '1985-03-15', 'ahmet.yilmaz@email.com'),
(2, 'Ayşe Demir', '1990-07-22', 'ayse.demir@email.com'),
(3, 'Mehmet Kaya', '1988-11-08', 'mehmet.kaya@email.com'),
(4, 'Fatma Özkan', '1992-01-30', 'fatma.ozkan@email.com'),
(5, 'Ali Şen', '1987-09-14', 'ali.sen@email.com'),
(6, 'Zeynep Acar', '1991-04-18', 'zeynep.acar@email.com'),
(7, 'Mustafa Koç', '1989-12-05', 'mustafa.koc@email.com'),
(8, 'Emine Yıldız', '1993-06-27', 'emine.yildiz@email.com'),
(9, 'Hasan Polat', '1986-08-13', 'hasan.polat@email.com'),
(10, 'Elif Arslan', '1994-02-09', 'elif.arslan@email.com'),
(11, 'Ömer Çelik', '1984-10-21', 'omer.celik@email.com'),
(12, 'Merve Doğan', '1995-05-16', 'merve.dogan@email.com'),
(13, 'Burak Yavuz', '1983-07-03', 'burak.yavuz@email.com'),
(14, 'Gül Erdoğan', '1996-01-28', 'gul.erdogan@email.com'),
(15, 'Emre Güler', '1982-11-11', 'emre.guler@email.com'),
(16, 'Seda Tunç', '1997-04-07', 'seda.tunc@email.com'),
(17, 'Kadir Aslan', '1981-09-19', 'kadir.aslan@email.com'),
(18, 'Büşra Kılıç', '1998-03-25', 'busra.kilic@email.com'),
(19, 'Serkan Özdemir', '1980-12-02', 'serkan.ozdemir@email.com'),
(20, 'Dilek Şahin', '1999-08-14', 'dilek.sahin@email.com'),
(21, 'Murat Yılmaz', '1985-05-08', 'murat.yilmaz@email.com'),
(22, 'Esra Öztürk', '1990-10-17', 'esra.ozturk@email.com'),
(23, 'Halil Kurt', '1988-02-23', 'halil.kurt@email.com'),
(24, 'Gamze Çiftçi', '1992-07-12', 'gamze.ciftci@email.com'),
(25, 'Tolga Başak', '1987-01-04', 'tolga.basak@email.com'),
(26, 'Pınar Mutlu', '1991-09-29', 'pinar.mutlu@email.com'),
(27, 'Kemal Aydın', '1989-06-15', 'kemal.aydin@email.com'),
(28, 'Nazlı Özer', '1993-11-21', 'nazli.ozer@email.com'),
(29, 'Oğuz Balcı', '1986-04-06', 'oguz.balci@email.com'),
(30, 'Sibel Taş', '1994-12-18', 'sibel.tas@email.com'),
(31, 'Volkan Er', '1984-08-31', 'volkan.er@email.com'),
(32, 'Cansu Güneş', '1995-03-10', 'cansu.gunes@email.com'),
(33, 'Erhan Yurt', '1983-10-26', 'erhan.yurt@email.com'),
(34, 'Derya Keskin', '1996-05-13', 'derya.keskin@email.com'),
(35, 'Cem Aksu', '1982-01-07', 'cem.aksu@email.com'),
(36, 'Gizem Uysal', '1997-08-20', 'gizem.uysal@email.com'),
(37, 'Berk Çevik', '1981-12-09', 'berk.cevik@email.com'),
(38, 'Tuba Özkan', '1998-07-05', 'tuba.ozkan@email.com'),
(39, 'Arda Şimşek', '1980-11-22', 'arda.simsek@email.com'),
(40, 'Ece Demirci', '1999-04-14', 'ece.demirci@email.com'),
(41, 'Baran Koçak', '1985-09-01', 'baran.kocak@email.com'),
(42, 'İrem Soylu', '1990-06-27', 'irem.soylu@email.com'),
(43, 'Kaan Özgür', '1988-03-18', 'kaan.ozgur@email.com'),
(44, 'Duygu Aktaş', '1992-12-04', 'duygu.aktas@email.com'),
(45, 'Eren Turan', '1987-10-11', 'eren.turan@email.com'),
(46, 'Melis Çankaya', '1991-07-30', 'melis.cankaya@email.com'),
(47, 'Onur Boyraz', '1989-02-16', 'onur.boyraz@email.com'),
(48, 'Begüm Yalçın', '1993-09-23', 'begum.yalcin@email.com'),
(49, 'Furkan Özmen', '1986-05-05', 'furkan.ozmen@email.com'),
(50, 'Selin Kavak', '1994-01-12', 'selin.kavak@email.com');

-- Veri ekleme işlemini kontrol et
SELECT COUNT(*) as toplam_kayit FROM employee;
SELECT * FROM employee LIMIT 5; -- İlk 5 kaydı göster

-- ==================================================================================
-- 3. HER SÜTUNA GÖRE 5 ADET UPDATE İŞLEMİ
-- ==================================================================================

-- Update işlemlerinden önce mevcut durumu göster
SELECT 'GÜNCELLEME ÖNCESİ DURUM:' as durum;
SELECT * FROM employee WHERE id IN (1, 10, 15, 25, 30);

-- ID'ye göre güncelleme
UPDATE employee 
SET name = 'Ahmet Yılmaz - Güncellendi', 
    email = 'ahmet.yilmaz.updated@email.com'
WHERE id = 1;

-- NAME'e göre güncelleme  
UPDATE employee 
SET birthday = '1985-01-01', 
    email = 'elif.arslan.updated@email.com'
WHERE name = 'Elif Arslan';

-- BIRTHDAY'e göre güncelleme
UPDATE employee 
SET name = 'Emre Güler - Yaş Güncellemesi',
    email = 'emre.guler.birthday@email.com'
WHERE birthday = '1982-11-11';

-- EMAIL'e göre güncelleme
UPDATE employee 
SET name = 'Tolga Başak - Email Güncellemesi',
    birthday = '1987-06-15'
WHERE email = 'tolga.basak@email.com';

-- ID aralığına göre toplu güncelleme
UPDATE employee 
SET name = CONCAT(name, ' - Toplu Güncelleme')
WHERE id = 30;

-- Güncelleme işlemlerinden sonra durumu kontrol et
SELECT 'GÜNCELLEME SONRASI DURUM:' as durum;
SELECT * FROM employee WHERE id IN (1, 10, 15, 25, 30);

-- ==================================================================================
-- 4. HER SÜTUNA GÖRE 5 ADET DELETE İŞLEMİ
-- ==================================================================================

-- Delete işlemlerinden önce mevcut durumu göster
SELECT 'SİLME ÖNCESİ KAYIT SAYISI:' as durum, COUNT(*) as kayit_sayisi FROM employee;

-- ID'ye göre silme
DELETE FROM employee WHERE id = 50;

-- NAME'e göre silme
DELETE FROM employee WHERE name = 'Selin Kavak';

-- BIRTHDAY'e göre silme  
DELETE FROM employee WHERE birthday = '1999-08-14';

-- EMAIL'e göre silme
DELETE FROM employee WHERE email = 'furkan.ozmen@email.com';

-- Koşullu silme (ID aralığı)
DELETE FROM employee WHERE id BETWEEN 45 AND 48;

-- Delete işlemlerinden sonra durumu kontrol et
SELECT 'SİLME SONRASI KAYIT SAYISI:' as durum, COUNT(*) as kayit_sayisi FROM employee;
SELECT 'SİLİNEN KAYITLAR:' as durum;
SELECT 'ID 45-50 arası kayıtlar ve belirtilen şartlardaki kayıtlar silindi.' as aciklama;

-- ==================================================================================
-- 5. KONTROL VE ANALİZ SORGULARI
-- ==================================================================================

-- Final durumu
SELECT 'FİNAL DURUM - KALAN KAYITLAR:' as durum;
SELECT * FROM employee ORDER BY id;

-- İstatistikler
SELECT 
    'TABLO İSTATİSTİKLERİ:' as durum,
    COUNT(*) as toplam_kayit,
    MIN(birthday) as en_eski_dogum,
    MAX(birthday) as en_yeni_dogum,
    COUNT(DISTINCT SUBSTRING(email, POSITION('@' IN email) + 1)) as email_domain_sayisi
FROM employee;

-- En yaşlı ve en genç çalışanlar
SELECT 'EN YAŞLI ÇALIŞAN:' as durum, * FROM employee ORDER BY birthday ASC LIMIT 1;
SELECT 'EN GENÇ ÇALIŞAN:' as durum, * FROM employee ORDER BY birthday DESC LIMIT 1;

-- Email domainlerine göre grup
SELECT 
    'EMAIL DOMAIN ANALİZİ:' as durum,
    SUBSTRING(email, POSITION('@' IN email) + 1) as domain,
    COUNT(*) as kullanici_sayisi
FROM employee 
GROUP BY SUBSTRING(email, POSITION('@' IN email) + 1)
ORDER BY kullanici_sayisi DESC;

-- ==================================================================================
-- NOTLAR VE AÇIKLAMALAR
-- ==================================================================================

Pratiklerde görünebilmesi adına, manuel olarak ekleme yaptım verileri.
