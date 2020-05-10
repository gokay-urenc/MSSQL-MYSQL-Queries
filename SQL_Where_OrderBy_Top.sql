/*
  Order by(sýralama komutu): Veriyi belirlenen alana göre sýralý bir þekilde getirir.
  Ýki alt komutu vardýr.
  Asc (Artan A-Z veya 0-9)
  Desc (Azalan Z-A veya 9-0)
*/

-- Ürünlerin stok miktarýna göre artan sýralamasý:

select * from Products
order by UnitsInStock asc

-- Asc veya desc belirlenmezse default olarak asc yapýlýr.

select * from Products
order by UnitsInStock

-- Ürünlerin UnitPrice alanýna göre azalan sýralamasý:

select * from Products
order by UnitPrice desc

-- CategoryID'si 2 olan ürünlerin stok miktarýna göre azalan sýralý verileri:

select * from Products
where CategoryID = 2 order by UnitsInStock desc

-- CategoryID'si 4 olan ve stok miktarý 20'den az olan ürünlerin stok miktarýna göre artan           sýralamasý:

select * from Products
where CategoryID = 4 and UnitsInStock < 20
order by UnitsInStock asc

/*
  Top Komutu: Satýr seçmek için kullanýlýr. Genelde sýralama komutu ile kullanýlýr.
  select top <satýr sayýsý> <kolonlar> from <tablo adý>
*/

select top 5 * from Products

-- Fiyatý en uygun 5 ürün:

select top 5 * from Products order by UnitPrice asc

-- En son alýnmýþ 6 sipariþ:

select top 6 * from Orders order by OrderDate desc