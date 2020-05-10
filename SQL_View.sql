/* 
  DDL(Data Definition Language(Veri Tanýmlama Dili): Veritabaný objeleri için kullanýlan alt t-sql komutlarýdýr.
  Create: Oluþturma.
  Alter: Düzenleme
  Drop: Silme
*/

-- View oluþturma:
-- Bir query penceresinde istenilen tek bir DDL komutudur. Altýný çizerek hata vermesi önemli deðildir.

create view VWKategoriListesi as select * from Categories

-- View çaðýrma:

select * from VWKategoriListesi

create view VWKategoriListesi2
as 
select CategoryID, CategoryName
from Categories

select * from VWKategoriListesi2

-- Oluþturulan view'lar veritabaný sekmesinde views klasöründe bulunur. Oluþturlan bir view'in silinmesi:

drop view VWKategoriListesi