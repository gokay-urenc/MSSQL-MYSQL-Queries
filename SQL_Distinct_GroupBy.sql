-- distinct: Tekrar eden kayýtlarý elimine eder. Tekrar eden kayýtlardan benzersiz bir sonuç elde    etmek için kullanýlýr.

select distinct City from Employees

select distinct Title from Employees

select distinct CategoryID from Products

-- group by: Tablodaki ayný kayýtlarý gruplar. Yani ayný kayýtlarý farklý kümelerde tutar.
-- group by kullanýmýnda * veya grouplanan kolon haricinde baþka bir kolon ismi kullanýlamaz.
-- Gruplanan kolon ismi result penceresinde gösterilmelidir.

select CategoryID from Products group by CategoryID -- Bu sonuç kategoriye göre ürün sayýsýný verir.

-- group by ile filtreleme:

-- select Title from Employees group by Title where Title <> 'Sales Manager' -- Hatalý kullaným.

select Title from Employees group by Title having Title <> 'Sales Manager'