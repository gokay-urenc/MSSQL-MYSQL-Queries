-- Products tablosundaki ürünlerin sayýsýný getiren view(View içerisinde adý olmayan kolon barýnamaz.):

create view vwUrunSayisi
as
select COUNT(*) as Sayisi
from Products

select * from vwUrunSayisi

-- View içerisinde adý olmayan kolon barýnamaz. View içerisinde aggregate kullanýmýndaki kolon ismi olmadýðý için view oluþturulmasýnda hata verir.

create view vwUrunVeKategoriBilgisi
as
select p.ProductName, p.UnitPrice, p.UnitsInStock, p.CategoryID as UrununKategoriID, c.CategoryID as KategorininKategoriID, c.CategoryName
from Products as p
inner join Categories as c
on p.CategoryID = c.CategoryID

select * from vwUrunVeKategoriBilgisi