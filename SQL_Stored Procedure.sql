/*
  Stored Procedure(Sakl� yordamlar)
*/

-- Procedure olu�turma:

create procedure spMesaj
as
begin
    print 'Hello World'
end

-- Procedure �al��t�rma:

execute spMesaj

-- Parametre alan procedure:

go

create proc spTopla
(
    @sayi1 int, @sayi2 int
)
as
begin
    declare @sonuc int
	set @sonuc = @sayi1 + @sayi2
	print @sonuc
end

exec spTopla 3, 9


go

create proc spTopla2
(
    @sayi1 int, @sayi2 int
)
as
begin
    declare @sonuc int
	set @sonuc = @sayi1 + @sayi2
	return @sonuc -- Procedure daima int de�er d�ner.
end

declare @gelenSonuc nvarchar(5)
exec @gelenSonuc = spTopla2 7, 5
print @gelenSonuc