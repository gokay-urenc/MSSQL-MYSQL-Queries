/*
  Delete: Tablodan veri silmek i�in kullan�l�r.
  delete from <tablo ad�> veya delete Tablo
  Yine tablodan veri silerken kriter olmazsa b�t�n tablo etkilenir.
  Tablolar aras�nda ili�ki varsa silinecek olan veri ili�kili di�er tabloda kullan�l�yorsa veriyi silemezsiniz.
  Veritaban�ndan veri silmek �ok istenilen bir durum de�ildir. Nedeni ge�mi�e d�n�k raporlamalar yap�laca�� zaman verinin veritaban�n�n durmas�ndan dolay�d�r.
*/

delete from Categories where CategoryID = 11

delete from Categories where CategoryName = '��ecekler'

select * from Categories