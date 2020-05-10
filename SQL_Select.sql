/*
SQL veritaban� sorgulama dilidir.
SQL server �zerinde �al��an sql komutlar�na transact-sql(t-sql) diyebiliriz.
�lgili sat�r se�ilerek sadece o sorgu �al��t�r�labilir.
-- * sql dilinde tablodaki b�t�n s�tunlar demektir.
*/

-- Kategoriler tablosundaki t�m kategorileri getiren sql sorgusu:

select * from Categories

-- Kategoriler tablosundaki CategoryName ve Description elemanlar�n� getiren sql sorgusu:

select CategoryName, Description from Categories

-- �r�nler(Product) tablosundaki b�t�n kolonlar� getiren sql sorgusu:

select * from Products