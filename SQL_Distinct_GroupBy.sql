-- distinct: Tekrar eden kay�tlar� elimine eder. Tekrar eden kay�tlardan benzersiz bir sonu� elde    etmek i�in kullan�l�r.

select distinct City from Employees

select distinct Title from Employees

select distinct CategoryID from Products

-- group by: Tablodaki ayn� kay�tlar� gruplar. Yani ayn� kay�tlar� farkl� k�melerde tutar.
-- group by kullan�m�nda * veya grouplanan kolon haricinde ba�ka bir kolon ismi kullan�lamaz.
-- Gruplanan kolon ismi result penceresinde g�sterilmelidir.

select CategoryID from Products group by CategoryID -- Bu sonu� kategoriye g�re �r�n say�s�n� verir.

-- group by ile filtreleme:

-- select Title from Employees group by Title where Title <> 'Sales Manager' -- Hatal� kullan�m.

select Title from Employees group by Title having Title <> 'Sales Manager'