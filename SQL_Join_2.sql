-- Nakliye þirketlerinin nakliye sayýsý:

select ShipperID, CompanyName,
Count(*) from Orders
inner join Shippers
on Shippers.ShipperID = Orders.ShipVia
group by ShipperID, CompanyName

-- En çok ürün satan çalýþanlarýn(EmployeeID) sipariþ(Orders) sayýlarýný gösteren sorgu(EmployeeID, FirstName, LastName ve sipariþ sayýlarý):

select e.EmployeeID, FirstName, LastName,
Count(*) as [Çalýþan Sipariþ Sayýlarý]
from Orders as o
join Employees as e
on e.EmployeeID = o.EmployeeID
group by e.EmployeeID, FirstName, LastName
order by [Çalýþan Sipariþ Sayýlarý] desc

-- left join: Soldaki tablonun eþlenen ve eþlemeyen tüm kayýtlarý gelirken saðdaki tablonun sadece eþlenen kayýtlarý gelir.
-- right join: Left join'in tersidir.
-- full join: Ýki veya daha fazla tablo birleþiminde tüm tablolarýn eþleþen ve eþleþmeyen kayýtlarýný geri getirir.

select * from Categories as c
left join Products as p
on c.CategoryID = p.CategoryID

insert Products values ('Deneme Ürün', 4, 1, '40-120 kg', 25.20, 1, 2, 2, 0)

select top 1 * from Products
order by ProductID desc

update Products set CategoryID = null where ProductID = 78

select * from Products as p
right join Categories as c
on p.CategoryID = c.CategoryID