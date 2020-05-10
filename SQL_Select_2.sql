-- Sorgular yazýlýrken eðer baþlangýçta server kurulurken seçilmiþ ise küçük büyük harfe dikkat      etmeye gerek yoktur.

/*
DML(Data Manipulation Language): Veri Ýþleme Dili
Select: Veri seçme.
Insert: Veri ekleme.
Update: Veri düzenleme.
Delete: Veri silme
*/

use NORTHWND -- Baþka bir veritabaný seçiliyse bile execute anýnda bu veritabaný açýlýr.

-- Ürünler Tablosu:

select * from Products

-- Müþteriler Tablosu:

select * from Customers

-- Çalýþanlar Tablosu:

select * from Employees

-- Çalýþanlar tablosundan EmployeeID, FirstName, LastName, Title, ReportsTo alanlarýný getiren sorgu

select EmployeeID, FirstName, LastName, Title, ReportsTo from Employees

-- Ýlgili tablonun sütunlarýný sürükle býrak yardýmýyla ekleyebiliriz.

select [EmployeeID], [LastName], [FirstName], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [City], [Region], [PostalCode], [Country], [HomePhone], [Extension], [Photo], [Notes], [ReportsTo], [PhotoPath] from Employees