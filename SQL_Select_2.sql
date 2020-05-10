-- Sorgular yaz�l�rken e�er ba�lang��ta server kurulurken se�ilmi� ise k���k b�y�k harfe dikkat      etmeye gerek yoktur.

/*
DML(Data Manipulation Language): Veri ��leme Dili
Select: Veri se�me.
Insert: Veri ekleme.
Update: Veri d�zenleme.
Delete: Veri silme
*/

use NORTHWND -- Ba�ka bir veritaban� se�iliyse bile execute an�nda bu veritaban� a��l�r.

-- �r�nler Tablosu:

select * from Products

-- M��teriler Tablosu:

select * from Customers

-- �al��anlar Tablosu:

select * from Employees

-- �al��anlar tablosundan EmployeeID, FirstName, LastName, Title, ReportsTo alanlar�n� getiren sorgu

select EmployeeID, FirstName, LastName, Title, ReportsTo from Employees

-- �lgili tablonun s�tunlar�n� s�r�kle b�rak yard�m�yla ekleyebiliriz.

select [EmployeeID], [LastName], [FirstName], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [City], [Region], [PostalCode], [Country], [HomePhone], [Extension], [Photo], [Notes], [ReportsTo], [PhotoPath] from Employees