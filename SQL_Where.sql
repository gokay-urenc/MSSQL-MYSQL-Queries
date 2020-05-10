/*
  Where komutu: T-SQL'de veri filtrelemek i�in kullan�l�r.
  Where komutunu kullanmak i�in kar��la�t�rma operat�rleri kullan�l�r.
  = (E�it)
  != (E�it de�il)
  <> (E�it de�il)
  > (b�y�k)
  < (k���k)
  >= (b�y�k e�it)
  <= (k���k e�it)
  Birden fazla kriter i�in mant�ksal operat�rler kullan�l�r.
  and (ve)
  or (veya)
  select * from <TabloAdi> where <Filtrelenecek Kolon> <Kar��la�t�rma Operat�r�> = <De�er>
*/

-- Stok miktar� 10'dan az olan kay�tlar� g�steren sorgu:

select * from Products where UnitsInStock < 10

-- Stok miktar� 10'dan fazla olan �r�nleri g�steren sorgu:

select * from Products where UnitsInStock > 10

-- Stok miktar� 0 olan �r�nleri g�steren sorgu:

select * from Products where UnitsInStock = 0

-- Customers(M��teriler) tablosundan City �zelli�i London olan m��terileri g�steren sorgu:

select * from Customers where City = 'London'

-- Customers(M��teriler) tablosundan City �zelli�i London olmayan m��terileri g�steren sorgu:

select * from Customers where City != 'London'

-- Products tablosundan CategoryID'si 2, StokMiktar� 10'dan az olan kay�tlar� getiren sorgu:

select * from Products where CategoryID = 2 and UnitsInStock < 10

-- Suppliers tablosundan City de�eri London, Paris, Tokyo olan m��terilerin CompanyName,            ContactName, ContactTitle, Phone alanlar�n� getiren sorgu:

select CompanyName as [�irket Ad�],
ContactName as Ad�,
ContactTitle as Unvan,
Phone as Telefon,
City as �ehir
from Suppliers
where City = 'London' or City = 'Paris' or City = 'Tokyo'

-- Kar��la�t�rma operat�rlerinde mant�ksal operat�r kullanmak yerine in komutu kullan�labilir.

select CompanyName as [�irket Ad�],
ContactName as Ad�,
ContactTitle as Unvan,
Phone as Telefon,
City as �ehir
from Suppliers
where City in ('London', 'Paris', 'Tokyo')

-- City kolonunda Paris, London, Tokyo olmayanlar:
-- in komutunun tersi not in komutudur.

select CompanyName as [�irket Ad�],
ContactName as Ad�,
ContactTitle as Unvan,
Phone as Telefon,
City as �ehir
from Suppliers
where City not in ('London', 'Paris', 'Tokyo')

-- Products tablosundan CategoryID'si 2 ya da 3 olan ve stok miktar� 20'den az olan �r�nleri getiren sorgu:

select * from Products
where (CategoryID = 2 or CategoryID = 3) and UnitsInStock < 20

-- Products tablosundan fiyat� 0 ile 10 aras�nda olan �r�nleri getiren sorgu:

select * from Products
where UnitPrice >= 0 and UnitPrice <= 10

-- Between and komutu filtreleme yaparken aral�k belirlemek i�in kullan�l�r.

select * from Products
where UnitPrice between 0 and 10

-- Null(Bo�)
-- Customers tablosundaki fax alan� bo� olan m��terileri getiren sorgu:

select * from Customers
where Fax is null

-- Customers tablosundaki fax alan� bo� olmayan m��terileri getiren sorgu:

select * from Customers
where Fax is not null

-- Country'si UK olan m��terilerden fax no'su olmayanlar�n CompanyName, ContactTitle, ContactName,   Phone, City, Country alanlar�n� ilgili takma isimlerini vererek getiren sorgu:

select CompanyName as [�irket Ad�],
ContactName as Ad�,
ContactTitle as Unvan,
Phone as Telefon,
City as �ehir,
Country as �lke,
Fax as Faks
from Customers as M��teriler
where Country = 'UK' and Fax is null