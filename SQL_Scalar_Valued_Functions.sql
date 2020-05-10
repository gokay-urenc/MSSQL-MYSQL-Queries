/* 
  Scalar Valued Functions: Parametre alabilen bu sayede dinamik �al��an ve geriye tek bir de�er d�nebilen nesnelerdir.
  Sorgu i�erisinde kullan�labilirler.
*/

-- ID'si g�nderilen Category'nin CategoryName'ini veren fonksiyon:

create function fncKategoriAdi -- Fonksiyon tan�mlamas�d�r.
(
    @KatID int -- Parametre tan�mlamas�d�r.
)
returns nvarchar(15) -- D�n�� tipi tan�mlamas�d�r.
begin -- C# scope ba�lang�c�d�r.

    declare @KatName nvarchar(15) -- De�i�ken tan�mlamas�d�r. declare <@de�i�ken ad�> <veri tipi>

	select @KatName = CategoryName from Categories
	where CategoryID = @KatID
	
	return @KatName

end -- C# scope biti�idir.

-- dbo: Fonksiyona eri�mek i�in kullan�l�r.
select ProductName, UnitPrice, UnitsInStock, dbo.fncKategoriAdi(CategoryID) as Kategorisi from Products -- Joine gerek kalmad�.


create function fncMesaj() -- Parametresiz fonksiyon olu�turmad�r.
returns nvarchar(50)
begin
    return 'Merhaba'
end

select dbo.fncMesaj() -- Fonksiyon �a��rmad�r.


create function fncMesaj2
(
    @isim nvarchar(50)
)
returns nvarchar(50)
begin
    return 'Merhaba' + @isim
end

select dbo.fncMesaj2(' Negan')
select dbo.fncMesaj2(' Rick')
select dbo.fncMesaj2(' Daryl')


-- Ad� ve soyad� parametre olarak al�nan ve geriye bunlar� birle�tirerek cevap d�nen fonksiyonu yaz�n�z.

create function fncMesaj3
(
    @ad nvarchar(25), @soyad nvarchar(25)
)
returns varchar(50)
begin
    declare @sonuc nvarchar(50)
	set @sonuc = @ad + ' ' + @soyad -- De�i�kene de�er atama: set <@de�i�ken ad�> = <de�er>
    return 'Ho�geldin' + @sonuc
end

select dbo.fncMesaj3(' Negan', 'Lucille')

select dbo.fncMesaj3(' ' + FirstName, LastName) as Ad� from Employees

--------------------------------------------------------------------------------------------------------

create function YasHesapla
(
    @DogumTarihi date
)
returns int
begin
    declare @snc int
	set @snc = YEAR(GETDATE()) - YEAR(@DogumTarihi) -- Year fonksiyonu verilen tarihin y�l k�sm�n� teslim eder.
	return @snc
end

select dbo.fncMesaj3(' ' + FirstName, LastName), BirthDate, dbo.YasHesapla(BirthDate) as Ya� from Employees

--------------------------------------------------------------------------------------------------------

-- Nakliye �irketlerinin nakliye say�lar�n� getiren fonksiyon:

create function fncNakliyeSiparisSayisi
(
    @nakliyeciID int
)
returns int
begin
    declare @deger int
	select @deger = COUNT(*) from Orders where ShipVia = @nakliyeciID
	return @deger
end

select CompanyName, Phone, dbo.fncNakliyeSiparisSayisi(ShipperID) from Shippers