-- as(aliases): Tablo veya kolon isimlerini ge�ici olarak de�i��tirme komutudur.
-- [] sql'de nesne isimleri aras�ndaki bo�luklar� giderir.
-- Tablo isimleri (takma ad(as)) birden fazla tabloyla �al��t���m�zda kullan�l�r.

select EmployeeID, FirstName + ' ' + LastName as [Tam Adi] from Employees

select * from [Order Details]

-- Categories tablosundaki CategoryID, CategoryName alanlar�n� getiren sorgu:

select CategoryID as [No], CategoryName as Ad� from Categories

-- Tabloya isim verme:

select * from Customers as c

-- Shippers(Nakliyeciler) tablosundaki CompanyName alanlar�n� getiren sorgu:

select shp.CompanyName, shp.Phone as Telefon from Shippers as Shp

-- Product tablosundaki ProductName, UnitPrice(Fiyat), UnitsInStock(Stok Miktar�) kolonlar�n�        getiren sorgu:

select
ProductName as [Urun Adi],
UnitPrice as Fiyat,
UnitsInStock as [Stok Miktari]
from Products as [�r�nler]