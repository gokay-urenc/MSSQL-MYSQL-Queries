/*   
  View'ler ve Function'lar, client'e(uygulamay� a�an ki�inin cihaz�na) geri veri d�nd�recekleri zaman select sorgusu i�ine yaz�l�rlar.
  Stored Procedure ise tek ba��na �al���r ve istek yapan her kullan�c�ya ayn� stored procedure'den cevap d�nd�r�r.
*/


-- Categories tablosunda CategoryName ve Description kolonlar�na veri ekleyen procedure:

create proc spKategoriEkle
-- alter proc spKategoriEkle -- Bu sadece d�zenleme s�ras�nda yap�l�r.
(
    @KatAdi nvarchar(50), @Aciklama nvarchar(50)
)
as
begin
    if LEN(@KatAdi) <= 15 -- Len, C#'taki Lenght �zelli�idir.
	begin
	    insert Categories(CategoryName, [Description]) values (@KatAdi, @Aciklama)
		return 1 -- Insert ba�ar�l�ysa 1 de�erini d�nelim.
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
    print 'Kay�t i�lemi ba�ar�l�d�r.'
end
else
begin
    print 'Kay�t i�lemi ba�ar�s�zd�r.'
end

----------------------------------------------------------------------------------------------

-- CategoryID'si verilen �r�nleri listeleyen procedure:

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

-- Sipari�lerin i�erisindeki �r�nlerin adlar�n� ve �r�nlerin kategori isimlerini g�steren store procedure:

go

create proc spSiparisDetaylari
as
begin
    select p.ProductID, ProductName, p.UnitPrice as [�r�n Fiyat�], od.UnitPrice as [Sat�� Fiyat�], dbo.fncKategoriAdi(p.CategoryID) as [Kategori Ad�]
    from [Order Details] as od
    inner join Products as p 
    on od.ProductID = p.ProductID
end

exec spSiparisDetaylari