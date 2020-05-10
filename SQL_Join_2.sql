-- Nakliye �irketlerinin nakliye say�s�:

select ShipperID, CompanyName,
Count(*) from Orders
inner join Shippers
on Shippers.ShipperID = Orders.ShipVia
group by ShipperID, CompanyName

-- En �ok �r�n satan �al��anlar�n(EmployeeID) sipari�(Orders) say�lar�n� g�steren sorgu(EmployeeID, FirstName, LastName ve sipari� say�lar�):

select e.EmployeeID, FirstName, LastName,
Count(*) as [�al��an Sipari� Say�lar�]
from Orders as o
join Employees as e
on e.EmployeeID = o.EmployeeID
group by e.EmployeeID, FirstName, LastName
order by [�al��an Sipari� Say�lar�] desc

-- left join: Soldaki tablonun e�lenen ve e�lemeyen t�m kay�tlar� gelirken sa�daki tablonun sadece e�lenen kay�tlar� gelir.
-- right join: Left join'in tersidir.
-- full join: �ki veya daha fazla tablo birle�iminde t�m tablolar�n e�le�en ve e�le�meyen kay�tlar�n� geri getirir.

select * from Categories as c
left join Products as p
on c.CategoryID = p.CategoryID

insert Products values ('Deneme �r�n', 4, 1, '40-120 kg', 25.20, 1, 2, 2, 0)

select top 1 * from Products
order by ProductID desc

update Products set CategoryID = null where ProductID = 78

select * from Products as p
right join Categories as c
on p.CategoryID = c.CategoryID