--1.test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);
--2.Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
INSERT INTO employee (id, name, birthday, email) 
VALUES 
(1, 'John Doe', '1990-05-10', 'john.doe@example.com'),
(2, 'Jane Smith', '1985-09-23', 'jane.smith@example.com'),
-- (daha fazla satır verisi ekleyin)
(50, 'Alice Johnson', '1992-12-02', 'alice.johnson@example.com');
--3.Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
-- A. Name güncelleme
UPDATE employee
SET name = 'John Updated'
WHERE id = 1;

-- B. Birthday güncelleme
UPDATE employee
SET birthday = '1980-01-01'
WHERE id = 2;

-- C. Email güncelleme
UPDATE employee
SET email = 'new.email@example.com'
WHERE id = 3;

-- D. Farklı bir Name güncelleme
UPDATE employee
SET name = 'Jane Updated'
WHERE id = 4;

-- E. Farklı bir Birthday güncelleme
UPDATE employee
SET birthday = '1991-08-22'
WHERE id = 5;

--4.Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
-- A. Id'ye göre satır silme
DELETE FROM employee
WHERE id = 1;

-- B. Name'e göre satır silme
DELETE FROM employee
WHERE name = 'Jane Smith';

-- C. Birthday'e göre satır silme
DELETE FROM employee
WHERE birthday = '1990-05-10';

-- D. Email'e göre satır silme
DELETE FROM employee
WHERE email = 'new.email@example.com';

-- E. Farklı bir Name'e göre satır silme
DELETE FROM employee
WHERE name = 'Alice Johnson';

