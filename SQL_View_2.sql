-- Products tablosundaki �r�nlerin say�s�n� getiren view(View i�erisinde ad� olmayan kolon bar�namaz.):

create view vwUrunSayisi
as
select COUNT(*) as Sayisi
from Products

select * from vwUrunSayisi

-- View i�erisinde ad� olmayan kolon bar�namaz. View i�erisinde aggregate kullan�m�ndaki kolon ismi olmad��� i�in view olu�turulmas�nda hata verir.

create view vwUrunVeKategoriBilgisi
as
select p.ProductName, p.UnitPrice, p.UnitsInStock, p.CategoryID as UrununKategoriID, c.CategoryID as KategorininKategoriID, c.CategoryName
from Products as p
inner join Categories as c
on p.CategoryID = c.CategoryID

select * from vwUrunVeKategoriBilgisi