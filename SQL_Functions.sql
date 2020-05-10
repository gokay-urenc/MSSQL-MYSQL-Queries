/*
  Fonksiyonlar: Aggregate Functions(Daha �nceden Tan�mlanm�� Fonksiyonlar)
  Fonksiyonlar�n ortak �zelli�i geriye tek sat�r ve tek s�tun d�nmeleridir.
  Count
  Sum
  Min
  Max
  Avg
*/

--  Count: Tablodaki sat�r say�s�n� verir. Count kullan�m�nda * kullan�ld���nda sat�rlar� sayarken    b�t�n s�tunlara g�re sayar. E�er * de�ilde s�tun ad� kullan�rsak null olan kay�tlar� dikkate      almaz.

select Count(*) from Products

select Count(Fax) from Customers

select CategoryID as [�r�n Modeli],
Count(*) as [�r�n Say�s�]
from Products
group by CategoryID

select Title,
Count(*) as [�al��an Say�s�]
from Employees
group by Title

-- �lkelere g�re(Country) �al��an(Employees) say�s�n� b�y�kten k����e s�ralama:

select Country as [�lke],
Count(*) as [�al��an Say�s�]
from Employees
group by Country
order by [�al��an Say�s�] desc

-- �lke ve �ehirlere g�re �al��an say�s�:

select Country as �lke, City as �ehir,
Count(*) as [M��teri Say�s�]
from Customers
group by Country,
City order by [M��teri Say�s�] desc


-- Sum: Toplama i�lemi yapar.

-- �r�nlerin toplam birim fiyat�:

select Sum(UnitPrice) as [Toplam Birim Fiyat] from Products

-- Products tablosunda kategoriye g�re stok miktar�:

select CategoryID as [�r�n Tipi],
Sum(UnitsInStock) as [�r�n Miktar�]
from Products
group by CategoryID

-- Sipari�lerdeki sat�lan toplam �r�n miktar�:

select Sum(Quantity) as [Toplam Sipari�]
from [Order Details]

-- Sipari�lerdeki �r�nlere g�re toplam adet:

select ProductID as [�r�n Tipi],
Sum(Quantity) as [Toplam Sipari�]
from [Order Details]
group by ProductID
order by ProductID asc

-- En �ok satan 5 �r�n

select top 5 ProductID as [�r�n Tipi],
Sum(Quantity) as [Sat�lan Adet]
from [Order Details]
group by ProductID
order by [Sat�lan Adet] desc

-- With ties: Son sat�rdaki ayn� olan kay�tlar�da getirir.

select top 10 with ties ProductID as [�r�n Tipi],
Sum(Quantity) as [Sat�lan Adet]
from [Order Details]
group by ProductID
order by [Sat�lan Adet] desc

-- Customers tablosunda toplam sipari�(Orders) say�s�n� getirme:

select CustomerID, Count(*)
from Orders
group by CustomerID

select Min(UnitPrice) from Products -- En ucuz �r�n� g�sterir.

select Max(UnitPrice) from Products -- En pahal� �r�n� g�sterir.

select Avg(UnitPrice) from Products -- Ortalama hesaplar ve sadece say�sal de�er kabul eder.

-- CategoryID'ye g�re �r�n raporlar�:

select CategoryID as [�r�n Tipi],
Count(*) as [�r�n Say�s�],
Sum(UnitPrice) as [Toplam Fiyat],
Avg(UnitPrice) as [Ortalama Fiyat],
Min(UnitPrice) as [En D���k Fiyat],
Max(UnitPrice) as [En Y�ksek Fiyat]
from Products as �r�nler
group by CategoryID