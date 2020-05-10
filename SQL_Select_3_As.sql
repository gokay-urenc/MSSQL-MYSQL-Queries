-- as(aliases): Tablo veya kolon isimlerini geçici olarak deðiðþtirme komutudur.
-- [] sql'de nesne isimleri arasýndaki boþluklarý giderir.
-- Tablo isimleri (takma ad(as)) birden fazla tabloyla çalýþtýðýmýzda kullanýlýr.

select EmployeeID, FirstName + ' ' + LastName as [Tam Adi] from Employees

select * from [Order Details]

-- Categories tablosundaki CategoryID, CategoryName alanlarýný getiren sorgu:

select CategoryID as [No], CategoryName as Adý from Categories

-- Tabloya isim verme:

select * from Customers as c

-- Shippers(Nakliyeciler) tablosundaki CompanyName alanlarýný getiren sorgu:

select shp.CompanyName, shp.Phone as Telefon from Shippers as Shp

-- Product tablosundaki ProductName, UnitPrice(Fiyat), UnitsInStock(Stok Miktarý) kolonlarýný        getiren sorgu:

select
ProductName as [Urun Adi],
UnitPrice as Fiyat,
UnitsInStock as [Stok Miktari]
from Products as [Ürünler]