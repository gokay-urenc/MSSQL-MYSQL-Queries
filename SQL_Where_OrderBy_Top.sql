/*
  Order by(s�ralama komutu): Veriyi belirlenen alana g�re s�ral� bir �ekilde getirir.
  �ki alt komutu vard�r.
  Asc (Artan A-Z veya 0-9)
  Desc (Azalan Z-A veya 9-0)
*/

-- �r�nlerin stok miktar�na g�re artan s�ralamas�:

select * from Products
order by UnitsInStock asc

-- Asc veya desc belirlenmezse default olarak asc yap�l�r.

select * from Products
order by UnitsInStock

-- �r�nlerin UnitPrice alan�na g�re azalan s�ralamas�:

select * from Products
order by UnitPrice desc

-- CategoryID'si 2 olan �r�nlerin stok miktar�na g�re azalan s�ral� verileri:

select * from Products
where CategoryID = 2 order by UnitsInStock desc

-- CategoryID'si 4 olan ve stok miktar� 20'den az olan �r�nlerin stok miktar�na g�re artan           s�ralamas�:

select * from Products
where CategoryID = 4 and UnitsInStock < 20
order by UnitsInStock asc

/*
  Top Komutu: Sat�r se�mek i�in kullan�l�r. Genelde s�ralama komutu ile kullan�l�r.
  select top <sat�r say�s�> <kolonlar> from <tablo ad�>
*/

select top 5 * from Products

-- Fiyat� en uygun 5 �r�n:

select top 5 * from Products order by UnitPrice asc

-- En son al�nm�� 6 sipari�:

select top 6 * from Orders order by OrderDate desc