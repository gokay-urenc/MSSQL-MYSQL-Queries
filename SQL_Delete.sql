/*
  Delete: Tablodan veri silmek için kullanýlýr.
  delete from <tablo adý> veya delete Tablo
  Yine tablodan veri silerken kriter olmazsa bütün tablo etkilenir.
  Tablolar arasýnda iliþki varsa silinecek olan veri iliþkili diðer tabloda kullanýlýyorsa veriyi silemezsiniz.
  Veritabanýndan veri silmek çok istenilen bir durum deðildir. Nedeni geçmiþe dönük raporlamalar yapýlacaðý zaman verinin veritabanýnýn durmasýndan dolayýdýr.
*/

delete from Categories where CategoryID = 11

delete from Categories where CategoryName = 'Ýçecekler'

select * from Categories