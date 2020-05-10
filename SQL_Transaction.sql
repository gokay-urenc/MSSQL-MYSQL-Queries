-- Transaction: Birden fazla tabloda veri bütünlüðünü saðlamak için yapýlan iþlemleri izleyen ve tüm iþlemler sorunsuz tamamlanana kadar bunlarý takip eden bir olaydýr.

begin transaction

insert Categories (CategoryName, [Description]) values ('Transaction Kat', 'Eklendi mi?')
rollback transaction

select * from Categories



insert Orders (EmployeeID, CustomerID, OrderDate) values (10, 'VINET', GETDATE())
declare @sonID int = scope_identity()
insert [Order Details] (OrderID, ProductID, Quantity, UnitPrice) values (@sonID, 99, 1, 1)

select * from Products where CategoryID = 8

delete Categories where CategoryID = 8