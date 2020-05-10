-- Joinler: Tablolarý birleþtirme yöntemleridir.
-- * Inner join: Ýki ayrý tablo eþleþen verileri getirir.
-- * Full join: Ýki ayrý tabloda eþleþen veya eþleþmeyen tüm kayýtlarý getirir.
-- * Right Join: Eþleþtirmeyi saðdan sola yapar.
-- En çok kullanýlan join yöntemi inner join'dir.

select * from Products
inner join Categories
on Products.CategoryID = Categories.CategoryID -- Birleþtirmeyi bu alanlar üzerinden yapar.

select ProductName, UnitsInStock, UnitPrice, CategoryName, y.CategoryID
from Products as x
inner join Categories as y
on x.CategoryID = y.CategoryID

-- Ürünlerin adý, fiyatý, kategori adý ve tedarikçi firmasýnýn adýný yazdýran join sorgusu:

select ProductName, UnitPrice, CategoryName, CompanyName
from Products as p
inner join Categories as c
on p.CategoryID = c.CategoryID
inner join Suppliers as s
on s.SupplierID = p.SupplierID

-- Hangi müþteri ne kadar sipariþ vermiþ:

select o.CustomerID, CompanyName,
Count(*) as [Sipariþ Sayýsý]
from Orders as o
inner join Customers cs
on o.CustomerID = cs.CustomerID
group by o.CustomerID, CompanyName
order by [Sipariþ Sayýsý] desc

-- Hangi ürün kaç adet sipariþte bulunuyor. Ürünlere göre toplam satýlan ürün adeti(Order Detail ve  Products tablolarý), (Kolon olarak ürün adý ve kaç adet sipariþte ve toplamda ilgili ürün satýþ   adeti):

select [Order Details].ProductID, Products.ProductName,
Count(*) as [Sipariþ Sayýsý],
Sum(Quantity) as [Toplam Adet]
from [Order Details]
inner join Products
on Products.ProductID = [Order Details].ProductID
group by [Order Details].ProductID, ProductName