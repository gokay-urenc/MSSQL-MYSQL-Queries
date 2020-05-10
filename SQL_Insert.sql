/*
  Insert: Veri eklemek i�in kullan�l�r.
  insert <tablo ad�> (<kolon veya kolonlar>) values (<de�er veya de�erler)
*/

insert Categories (CategoryName) values ('��ecekler')

insert Categories (CategoryName, [Description]) values ('Deneme', 'Deneme A��klamas�')

select * from Categories

-- Shippers tablosunun CompanyName ve Phone kolonlar�na de�er ekleme:

insert Shippers (CompanyName, Phone) values ('�irket', '5552956291')

select * from Shippers

-- �al��anlar tablosuna yeni bir �al��an ekleme:
-- GETDATE(): Tarih fonksiyonudur. Bug�n�n tarihini verir.

insert Employees (FirstName, LastName, Title, City, HireDate) values ('Negan', 'Lucille', 'Y�netici', 'Atlanta', GETDATE())

select * from Employees order by EmployeeID desc