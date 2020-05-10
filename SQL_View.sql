/* 
  DDL(Data Definition Language(Veri Tan�mlama Dili): Veritaban� objeleri i�in kullan�lan alt t-sql komutlar�d�r.
  Create: Olu�turma.
  Alter: D�zenleme
  Drop: Silme
*/

-- View olu�turma:
-- Bir query penceresinde istenilen tek bir DDL komutudur. Alt�n� �izerek hata vermesi �nemli de�ildir.

create view VWKategoriListesi as select * from Categories

-- View �a��rma:

select * from VWKategoriListesi

create view VWKategoriListesi2
as 
select CategoryID, CategoryName
from Categories

select * from VWKategoriListesi2

-- Olu�turulan view'lar veritaban� sekmesinde views klas�r�nde bulunur. Olu�turlan bir view'in silinmesi:

drop view VWKategoriListesi