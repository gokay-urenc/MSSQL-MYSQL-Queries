/* 
  Scalar Valued Functions: Parametre alabilen bu sayede dinamik çalýþan ve geriye tek bir deðer dönebilen nesnelerdir.
  Sorgu içerisinde kullanýlabilirler.
*/

-- ID'si gönderilen Category'nin CategoryName'ini veren fonksiyon:

create function fncKategoriAdi -- Fonksiyon tanýmlamasýdýr.
(
    @KatID int -- Parametre tanýmlamasýdýr.
)
returns nvarchar(15) -- Dönüþ tipi tanýmlamasýdýr.
begin -- C# scope baþlangýcýdýr.

    declare @KatName nvarchar(15) -- Deðiþken tanýmlamasýdýr. declare <@deðiþken adý> <veri tipi>

	select @KatName = CategoryName from Categories
	where CategoryID = @KatID
	
	return @KatName

end -- C# scope bitiþidir.

-- dbo: Fonksiyona eriþmek için kullanýlýr.
select ProductName, UnitPrice, UnitsInStock, dbo.fncKategoriAdi(CategoryID) as Kategorisi from Products -- Joine gerek kalmadý.


create function fncMesaj() -- Parametresiz fonksiyon oluþturmadýr.
returns nvarchar(50)
begin
    return 'Merhaba'
end

select dbo.fncMesaj() -- Fonksiyon çaðýrmadýr.


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


-- Adý ve soyadý parametre olarak alýnan ve geriye bunlarý birleþtirerek cevap dönen fonksiyonu yazýnýz.

create function fncMesaj3
(
    @ad nvarchar(25), @soyad nvarchar(25)
)
returns varchar(50)
begin
    declare @sonuc nvarchar(50)
	set @sonuc = @ad + ' ' + @soyad -- Deðiþkene deðer atama: set <@deðiþken adý> = <deðer>
    return 'Hoþgeldin' + @sonuc
end

select dbo.fncMesaj3(' Negan', 'Lucille')

select dbo.fncMesaj3(' ' + FirstName, LastName) as Adý from Employees

--------------------------------------------------------------------------------------------------------

create function YasHesapla
(
    @DogumTarihi date
)
returns int
begin
    declare @snc int
	set @snc = YEAR(GETDATE()) - YEAR(@DogumTarihi) -- Year fonksiyonu verilen tarihin yýl kýsmýný teslim eder.
	return @snc
end

select dbo.fncMesaj3(' ' + FirstName, LastName), BirthDate, dbo.YasHesapla(BirthDate) as Yaþ from Employees

--------------------------------------------------------------------------------------------------------

-- Nakliye þirketlerinin nakliye sayýlarýný getiren fonksiyon:

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