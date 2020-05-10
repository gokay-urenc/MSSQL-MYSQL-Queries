/*
  Update: Tabloda var olan bir veriyi g�ncellemek i�in kullan�l�r.
  Update i�leminde t�m tablo etkilenebilir.
  Update kullan�m�nda kriter belirlemek gerekir.
  update <tablo ad�> set <kolon ad�> = <yeni de�er>
  SQL'de atama yaparken i�lemin ba��na set eklenir.
*/

select * into Calisanlar from Employees -- Orjinal employees tablosunun kopyas�n� ��kartt�k.

select * from Calisanlar

update Calisanlar set LastName = 'Deneme'
-- Hepsinin LastName'si Deneme olur. Bu asla yap�lmamal�d�r. Update i�leminde kriter kesinlikle olmal�d�r ve bu kriter kesinlikle primary key �zerinden         yap�lmal�d�r.

update Calisanlar set LastName = 'Cliffhanger' where EmployeeID = 10

-- ProductID'si 1 olan �r�n�n stok miktar�n� 55 olarak de�i�tirme

update Products set UnitsInStock = 55 where ProductID = 1

select * from Products

-- CategoryID'si 1 olan �r�nlerin stok miktarlar�n� 5 artt�rma:

update Products set UnitsInStock += 5 where CategoryID = 1