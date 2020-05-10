/*
  View d�zenleme query penceresinden bir view'i d�zenlemek i�in view'in g�vdesini bilmemiz gerekir.
  G�vdesine sahip olmad���m�z view'i objeye(view'e) eri�erek yapmal�y�z.
  Eri�ilecek yer veritaban� sekmesindeki view klas�r�ndedir.
  -------------------------------------------------------------------------------------------------------------------------------------------
  Functionlar: C#'taki methodlar gibi parametre alabilen ve geriye de�er veya tablo d�nd�rebilen olaylard�r.
  Aggregate function(Daha �nceden tan�mlanm��) gibi bizlerde kullan�c� tan�ml� fonksiyonlar(user defined functions) tan�mlayabiliriz.
  * Table Valued Functions: Bir veya daha fazla sonu�(tablo) d�nen fonksiyondur.
  * Scalar Functions: Geriye tek bir de�er d�nebilen fonksiyondur.
  Table Valued Functions ve View birbirine �ok benzerdir. Aralar�ndaki en b�y�k fark ise View parametre alamazken Table Valued Function al�r.
*/

-- create view vwUrunler
-- as
-- select * from Products
-- where ProductID = 3

-- select * from vwUrunler
-- where ProductID = 3

create function fncUrunler
(
@urunID int -- Fonksiyon i�in parametre.
)
returns table -- D�n�lecek tip.
as
return
select * from Products
where ProductID = @urunID

select * from fncUrunler(1) -- Fonksiyon �a��rma: