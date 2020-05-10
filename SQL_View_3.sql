/*
  -sql dosyasý t-sql querylerinin yazýldýðý dosyadýr.
  sql dosyasý sadece bir obje için oluþturulmalýdýr.
*/

select * from vwUrunVeKategoriBilgisi

-- Nakliyecilerin taþýdýklarý sipariþ sayýlarýný ve nakliyecilerin þirket adlarýný gösteren view(Shippers, Orders):

create view vwNakliyeciRapor
as
select ShipVia, CompanyName,
Count(*) as TasinanSiparis
from Orders as o
inner join Shippers as s
on s.ShipperID = o.ShipVia
group by ShipVia, CompanyName


select * from vwNakliyeciRapor

-- Ürünlerin adlarýný ve sipariþ adetlerini getiren view(Order Detail, Product):

create view vwUrunRaporlari
as
select od.ProductID, ProductName,
Count(*) as SiparisSayisi
from [Order Details] as od
inner join Products as p
on od.ProductID = p.ProductID
group by od.ProductID, ProductName


select * from vwUrunRaporlari


-- Ürünlerin kategori adýný ve tedarikçi firmalarýný gösteren view:

create view vwUrunBilgileri
as
select ProductID, ProductName, CategoryName, CompanyName
from Products as p
inner join Suppliers as sp
on sp.SupplierID = p.SupplierID
inner join Categories as c
on c.CategoryID = p.CategoryID

select * from vwUrunBilgileri