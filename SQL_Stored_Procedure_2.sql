/*   
  View'ler ve Function'lar, client'e(uygulamayý açan kiþinin cihazýna) geri veri döndürecekleri zaman select sorgusu içine yazýlýrlar.
  Stored Procedure ise tek baþýna çalýþýr ve istek yapan her kullanýcýya ayný stored procedure'den cevap döndürür.
*/


-- Categories tablosunda CategoryName ve Description kolonlarýna veri ekleyen procedure:

create proc spKategoriEkle
-- alter proc spKategoriEkle -- Bu sadece düzenleme sýrasýnda yapýlýr.
(
    @KatAdi nvarchar(50), @Aciklama nvarchar(50)
)
as
begin
    if LEN(@KatAdi) <= 15 -- Len, C#'taki Lenght özelliðidir.
	begin
	    insert Categories(CategoryName, [Description]) values (@KatAdi, @Aciklama)
		return 1 -- Insert baþarýlýysa 1 deðerini dönelim.
	end
	else
	begin
	    return 0
	end
end

declare @sonuc int
exec @sonuc = spKategoriEkle 'Negan', 'Lucille'
print @sonuc

if @sonuc = 1
begin
    print 'Kayýt iþlemi baþarýlýdýr.'
end
else
begin
    print 'Kayýt iþlemi baþarýsýzdýr.'
end

----------------------------------------------------------------------------------------------

-- CategoryID'si verilen ürünleri listeleyen procedure:

go

create proc spUrunListesi
(
    @ctgID int
)
as
begin
    select * from Products where CategoryID = @ctgID
end

exec spUrunListesi 2

----------------------------------------------------------------------------------------------

-- Sipariþlerin içerisindeki ürünlerin adlarýný ve ürünlerin kategori isimlerini gösteren store procedure:

go

create proc spSiparisDetaylari
as
begin
    select p.ProductID, ProductName, p.UnitPrice as [Ürün Fiyatý], od.UnitPrice as [Satýþ Fiyatý], dbo.fncKategoriAdi(p.CategoryID) as [Kategori Adý]
    from [Order Details] as od
    inner join Products as p 
    on od.ProductID = p.ProductID
end

exec spSiparisDetaylari