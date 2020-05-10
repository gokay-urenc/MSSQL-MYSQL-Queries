/*
  Insert: Veri eklemek için kullanýlýr.
  insert <tablo adý> (<kolon veya kolonlar>) values (<deðer veya deðerler)
*/

insert Categories (CategoryName) values ('Ýçecekler')

insert Categories (CategoryName, [Description]) values ('Deneme', 'Deneme Açýklamasý')

select * from Categories

-- Shippers tablosunun CompanyName ve Phone kolonlarýna deðer ekleme:

insert Shippers (CompanyName, Phone) values ('Þirket', '5552956291')

select * from Shippers

-- Çalýþanlar tablosuna yeni bir çalýþan ekleme:
-- GETDATE(): Tarih fonksiyonudur. Bugünün tarihini verir.

insert Employees (FirstName, LastName, Title, City, HireDate) values ('Negan', 'Lucille', 'Yönetici', 'Atlanta', GETDATE())

select * from Employees order by EmployeeID desc