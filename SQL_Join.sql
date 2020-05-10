-- Joinler: Tablolar� birle�tirme y�ntemleridir.
-- * Inner join: �ki ayr� tablo e�le�en verileri getirir.
-- * Full join: �ki ayr� tabloda e�le�en veya e�le�meyen t�m kay�tlar� getirir.
-- * Right Join: E�le�tirmeyi sa�dan sola yapar.
-- En �ok kullan�lan join y�ntemi inner join'dir.

select * from Products
inner join Categories
on Products.CategoryID = Categories.CategoryID -- Birle�tirmeyi bu alanlar �zerinden yapar.

select ProductName, UnitsInStock, UnitPrice, CategoryName, y.CategoryID
from Products as x
inner join Categories as y
on x.CategoryID = y.CategoryID

-- �r�nlerin ad�, fiyat�, kategori ad� ve tedarik�i firmas�n�n ad�n� yazd�ran join sorgusu:

select ProductName, UnitPrice, CategoryName, CompanyName
from Products as p
inner join Categories as c
on p.CategoryID = c.CategoryID
inner join Suppliers as s
on s.SupplierID = p.SupplierID

-- Hangi m��teri ne kadar sipari� vermi�:

select o.CustomerID, CompanyName,
Count(*) as [Sipari� Say�s�]
from Orders as o
inner join Customers cs
on o.CustomerID = cs.CustomerID
group by o.CustomerID, CompanyName
order by [Sipari� Say�s�] desc

-- Hangi �r�n ka� adet sipari�te bulunuyor. �r�nlere g�re toplam sat�lan �r�n adeti(Order Detail ve  Products tablolar�), (Kolon olarak �r�n ad� ve ka� adet sipari�te ve toplamda ilgili �r�n sat��   adeti):

select [Order Details].ProductID, Products.ProductName,
Count(*) as [Sipari� Say�s�],
Sum(Quantity) as [Toplam Adet]
from [Order Details]
inner join Products
on Products.ProductID = [Order Details].ProductID
group by [Order Details].ProductID, ProductName