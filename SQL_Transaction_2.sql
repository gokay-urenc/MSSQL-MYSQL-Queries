create proc spSiparisOlustur
(
    @CalisanID int,
	@MusteriID nchar(5),
	@UrunID int,
	@Adet smallint
)
as
begin
    declare @siparisID int -- Proc'un geri dönüþ deðeri için tanýmlandý.
    begin try
        begin transaction -- Transaction'ý baþlat.
            insert Orders (EmployeeID, CustomerID, OrderDate) values (@CalisanID, @MusteriID, GETDATE())
            declare @sonID int = scope_identity()
			declare @urunFiyati money
			select @urunFiyati = UnitPrice from Products where ProductID = @UrunID
            insert [Order Details] (OrderID, ProductID, Quantity, UnitPrice) values (@sonID, @UrunID, @Adet, @urunFiyati)
        commit transaction -- Transaction'ý onayla.
    end try
    begin catch
        rollback transaction -- Transaction'ý geri al.
		set @siparisID = 0
    end catch
	return @siparisID
end

-- Baþarýlý Sipariþ:
declare @siparisNo int
exec @siparisNo = spSiparisOlustur 1, 'ALFKI', 3, 2
print @siparisNo

-- Baþarýsýz Sipariþ:
declare @gelenNo int
exec @gelenNo = spSiparisOlustur 1, 'HANAR', 112, 9
print @gelenNo

select * from Orders where OrderID = 11081
select * from [Order Details] where OrderID = 11081