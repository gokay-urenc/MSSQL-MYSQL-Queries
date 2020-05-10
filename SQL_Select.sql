/*
SQL veritabaný sorgulama dilidir.
SQL server üzerinde çalýþan sql komutlarýna transact-sql(t-sql) diyebiliriz.
Ýlgili satýr seçilerek sadece o sorgu çalýþtýrýlabilir.
-- * sql dilinde tablodaki bütün sütunlar demektir.
*/

-- Kategoriler tablosundaki tüm kategorileri getiren sql sorgusu:

select * from Categories

-- Kategoriler tablosundaki CategoryName ve Description elemanlarýný getiren sql sorgusu:

select CategoryName, Description from Categories

-- Ürünler(Product) tablosundaki bütün kolonlarý getiren sql sorgusu:

select * from Products