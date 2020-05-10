/*
  -sql dosyas� t-sql querylerinin yaz�ld��� dosyad�r.
  sql dosyas� sadece bir obje i�in olu�turulmal�d�r.
*/

select * from vwUrunVeKategoriBilgisi

-- Nakliyecilerin ta��d�klar� sipari� say�lar�n� ve nakliyecilerin �irket adlar�n� g�steren view(Shippers, Orders):

create view vwNakliyeciRapor
as
select ShipVia, CompanyName,
Count(*) as TasinanSiparis
from Orders as o
inner join Shippers as s
on s.ShipperID = o.ShipVia
group by ShipVia, CompanyName


select * from vwNakliyeciRapor

-- �r�nlerin adlar�n� ve sipari� adetlerini getiren view(Order Detail, Product):

create view vwUrunRaporlari
as
select od.ProductID, ProductName,
Count(*) as SiparisSayisi
from [Order Details] as od
inner join Products as p
on od.ProductID = p.ProductID
group by od.ProductID, ProductName


select * from vwUrunRaporlari


-- �r�nlerin kategori ad�n� ve tedarik�i firmalar�n� g�steren view:

create view vwUrunBilgileri
as
select ProductID, ProductName, CategoryName, CompanyName
from Products as p
inner join Suppliers as sp
on sp.SupplierID = p.SupplierID
inner join Categories as c
on c.CategoryID = p.CategoryID

select * from vwUrunBilgileri