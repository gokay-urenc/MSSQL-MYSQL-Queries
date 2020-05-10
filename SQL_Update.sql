/*
  Update: Tabloda var olan bir veriyi güncellemek için kullanýlýr.
  Update iþleminde tüm tablo etkilenebilir.
  Update kullanýmýnda kriter belirlemek gerekir.
  update <tablo adý> set <kolon adý> = <yeni deðer>
  SQL'de atama yaparken iþlemin baþýna set eklenir.
*/

select * into Calisanlar from Employees -- Orjinal employees tablosunun kopyasýný çýkarttýk.

select * from Calisanlar

update Calisanlar set LastName = 'Deneme'
-- Hepsinin LastName'si Deneme olur. Bu asla yapýlmamalýdýr. Update iþleminde kriter kesinlikle olmalýdýr ve bu kriter kesinlikle primary key üzerinden         yapýlmalýdýr.

update Calisanlar set LastName = 'Cliffhanger' where EmployeeID = 10

-- ProductID'si 1 olan ürünün stok miktarýný 55 olarak deðiþtirme

update Products set UnitsInStock = 55 where ProductID = 1

select * from Products

-- CategoryID'si 1 olan ürünlerin stok miktarlarýný 5 arttýrma:

update Products set UnitsInStock += 5 where CategoryID = 1