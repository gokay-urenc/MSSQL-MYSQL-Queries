/*
  Where komutu: T-SQL'de veri filtrelemek için kullanýlýr.
  Where komutunu kullanmak için karþýlaþtýrma operatörleri kullanýlýr.
  = (Eþit)
  != (Eþit deðil)
  <> (Eþit deðil)
  > (büyük)
  < (küçük)
  >= (büyük eþit)
  <= (küçük eþit)
  Birden fazla kriter için mantýksal operatörler kullanýlýr.
  and (ve)
  or (veya)
  select * from <TabloAdi> where <Filtrelenecek Kolon> <Karþýlaþtýrma Operatörü> = <Deðer>
*/

-- Stok miktarý 10'dan az olan kayýtlarý gösteren sorgu:

select * from Products where UnitsInStock < 10

-- Stok miktarý 10'dan fazla olan ürünleri gösteren sorgu:

select * from Products where UnitsInStock > 10

-- Stok miktarý 0 olan ürünleri gösteren sorgu:

select * from Products where UnitsInStock = 0

-- Customers(Müþteriler) tablosundan City özelliði London olan müþterileri gösteren sorgu:

select * from Customers where City = 'London'

-- Customers(Müþteriler) tablosundan City özelliði London olmayan müþterileri gösteren sorgu:

select * from Customers where City != 'London'

-- Products tablosundan CategoryID'si 2, StokMiktarý 10'dan az olan kayýtlarý getiren sorgu:

select * from Products where CategoryID = 2 and UnitsInStock < 10

-- Suppliers tablosundan City deðeri London, Paris, Tokyo olan müþterilerin CompanyName,            ContactName, ContactTitle, Phone alanlarýný getiren sorgu:

select CompanyName as [Þirket Adý],
ContactName as Adý,
ContactTitle as Unvan,
Phone as Telefon,
City as Þehir
from Suppliers
where City = 'London' or City = 'Paris' or City = 'Tokyo'

-- Karþýlaþtýrma operatörlerinde mantýksal operatör kullanmak yerine in komutu kullanýlabilir.

select CompanyName as [Þirket Adý],
ContactName as Adý,
ContactTitle as Unvan,
Phone as Telefon,
City as Þehir
from Suppliers
where City in ('London', 'Paris', 'Tokyo')

-- City kolonunda Paris, London, Tokyo olmayanlar:
-- in komutunun tersi not in komutudur.

select CompanyName as [Þirket Adý],
ContactName as Adý,
ContactTitle as Unvan,
Phone as Telefon,
City as Þehir
from Suppliers
where City not in ('London', 'Paris', 'Tokyo')

-- Products tablosundan CategoryID'si 2 ya da 3 olan ve stok miktarý 20'den az olan ürünleri getiren sorgu:

select * from Products
where (CategoryID = 2 or CategoryID = 3) and UnitsInStock < 20

-- Products tablosundan fiyatý 0 ile 10 arasýnda olan ürünleri getiren sorgu:

select * from Products
where UnitPrice >= 0 and UnitPrice <= 10

-- Between and komutu filtreleme yaparken aralýk belirlemek için kullanýlýr.

select * from Products
where UnitPrice between 0 and 10

-- Null(Boþ)
-- Customers tablosundaki fax alaný boþ olan müþterileri getiren sorgu:

select * from Customers
where Fax is null

-- Customers tablosundaki fax alaný boþ olmayan müþterileri getiren sorgu:

select * from Customers
where Fax is not null

-- Country'si UK olan müþterilerden fax no'su olmayanlarýn CompanyName, ContactTitle, ContactName,   Phone, City, Country alanlarýný ilgili takma isimlerini vererek getiren sorgu:

select CompanyName as [Þirket Adý],
ContactName as Adý,
ContactTitle as Unvan,
Phone as Telefon,
City as Þehir,
Country as Ülke,
Fax as Faks
from Customers as Müþteriler
where Country = 'UK' and Fax is null