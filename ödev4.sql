
--Kategorilere göre toplam stok miktarını bulunuz.

SELECT C.CategoryName , SUM (P.UnitsInStock) AS 'TOPLAM STOK' FROM Categories C JOIN Products P ON C.CategoryID=P.CategoryID GROUP BY CategoryName


-- Her bir çalışan toplam ne kadarlık satış yapmıştır.

select E.FirstName+' '+E.LastName AS ÇALIŞAN, SUM((OD.Quantity*OD.UnitPrice)- OD.Discount) AS 'TOPLAM SATIŞ' from Employees E join Orders O ON E.EmployeeID=O.EmployeeID JOIN [Order Details] OD ON O.OrderID=OD.OrderID GROUP BY E.FirstName+' '+E.LastName


-- Her bir siparişteki toplam ürün sayisi 200'den az olanlar

SELECT OrderID , SUM(Quantity) AS 'Toplam'
FROM [Order Details]
GROUP BY OrderID
HAVING SUM(Quantity) < 200
ORDER BY 2;



-- Toplam tutari 2500 ile 3500 arasinda olan siparişlerin gruplanması 

SELECT OrderID , SUM (UnitPrice * Quantity) 'TOPLAM SIPARIS' FROM  [Order Details] 
GROUP BY OrderID
HAVING SUM ( UnitPrice * Quantity )BETWEEN 2500 AND 3500











