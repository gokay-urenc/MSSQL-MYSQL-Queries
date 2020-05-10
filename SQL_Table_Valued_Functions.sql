/*
  View düzenleme query penceresinden bir view'i düzenlemek için view'in gövdesini bilmemiz gerekir.
  Gövdesine sahip olmadýðýmýz view'i objeye(view'e) eriþerek yapmalýyýz.
  Eriþilecek yer veritabaný sekmesindeki view klasöründedir.
  -------------------------------------------------------------------------------------------------------------------------------------------
  Functionlar: C#'taki methodlar gibi parametre alabilen ve geriye deðer veya tablo döndürebilen olaylardýr.
  Aggregate function(Daha önceden tanýmlanmýþ) gibi bizlerde kullanýcý tanýmlý fonksiyonlar(user defined functions) tanýmlayabiliriz.
  * Table Valued Functions: Bir veya daha fazla sonuç(tablo) dönen fonksiyondur.
  * Scalar Functions: Geriye tek bir deðer dönebilen fonksiyondur.
  Table Valued Functions ve View birbirine çok benzerdir. Aralarýndaki en büyük fark ise View parametre alamazken Table Valued Function alýr.
*/

-- create view vwUrunler
-- as
-- select * from Products
-- where ProductID = 3

-- select * from vwUrunler
-- where ProductID = 3

create function fncUrunler
(
@urunID int -- Fonksiyon için parametre.
)
returns table -- Dönülecek tip.
as
return
select * from Products
where ProductID = @urunID

select * from fncUrunler(1) -- Fonksiyon çaðýrma: