/*
  Fonksiyonlar: Aggregate Functions(Daha Önceden Tanýmlanmýþ Fonksiyonlar)
  Fonksiyonlarýn ortak özelliði geriye tek satýr ve tek sütun dönmeleridir.
  Count
  Sum
  Min
  Max
  Avg
*/

--  Count: Tablodaki satýr sayýsýný verir. Count kullanýmýnda * kullanýldýðýnda satýrlarý sayarken    bütün sütunlara göre sayar. Eðer * deðilde sütun adý kullanýrsak null olan kayýtlarý dikkate      almaz.

select Count(*) from Products

select Count(Fax) from Customers

select CategoryID as [Ürün Modeli],
Count(*) as [Ürün Sayýsý]
from Products
group by CategoryID

select Title,
Count(*) as [Çalýþan Sayýsý]
from Employees
group by Title

-- Ülkelere göre(Country) çalýþan(Employees) sayýsýný büyükten küçüðe sýralama:

select Country as [Ülke],
Count(*) as [Çalýþan Sayýsý]
from Employees
group by Country
order by [Çalýþan Sayýsý] desc

-- Ülke ve þehirlere göre çalýþan sayýsý:

select Country as Ülke, City as Þehir,
Count(*) as [Müþteri Sayýsý]
from Customers
group by Country,
City order by [Müþteri Sayýsý] desc


-- Sum: Toplama iþlemi yapar.

-- Ürünlerin toplam birim fiyatý:

select Sum(UnitPrice) as [Toplam Birim Fiyat] from Products

-- Products tablosunda kategoriye göre stok miktarý:

select CategoryID as [Ürün Tipi],
Sum(UnitsInStock) as [Ürün Miktarý]
from Products
group by CategoryID

-- Sipariþlerdeki satýlan toplam ürün miktarý:

select Sum(Quantity) as [Toplam Sipariþ]
from [Order Details]

-- Sipariþlerdeki ürünlere göre toplam adet:

select ProductID as [Ürün Tipi],
Sum(Quantity) as [Toplam Sipariþ]
from [Order Details]
group by ProductID
order by ProductID asc

-- En çok satan 5 ürün

select top 5 ProductID as [Ürün Tipi],
Sum(Quantity) as [Satýlan Adet]
from [Order Details]
group by ProductID
order by [Satýlan Adet] desc

-- With ties: Son satýrdaki ayný olan kayýtlarýda getirir.

select top 10 with ties ProductID as [Ürün Tipi],
Sum(Quantity) as [Satýlan Adet]
from [Order Details]
group by ProductID
order by [Satýlan Adet] desc

-- Customers tablosunda toplam sipariþ(Orders) sayýsýný getirme:

select CustomerID, Count(*)
from Orders
group by CustomerID

select Min(UnitPrice) from Products -- En ucuz ürünü gösterir.

select Max(UnitPrice) from Products -- En pahalý ürünü gösterir.

select Avg(UnitPrice) from Products -- Ortalama hesaplar ve sadece sayýsal deðer kabul eder.

-- CategoryID'ye göre ürün raporlarý:

select CategoryID as [Ürün Tipi],
Count(*) as [Ürün Sayýsý],
Sum(UnitPrice) as [Toplam Fiyat],
Avg(UnitPrice) as [Ortalama Fiyat],
Min(UnitPrice) as [En Düþük Fiyat],
Max(UnitPrice) as [En Yüksek Fiyat]
from Products as Ürünler
group by CategoryID