  ödev

-- Bir siparişin hangi çalışan tarafından hangi müşteriye hangi kategorideki üründen hangi fiyattan kaç adet satıldığını listeleyiniz.
-- Çalışanın adı, soyadı, ünvanı, görevi, işe başlama tarihi
-- Müşterinin firma adını, temsilcisini ve telefonunu
-- Ürünün adını, stok miktarını, birim fiyatını
-- Siparişin adetini ve satış fiyatını
-- Kategori adını
-- Orders, Order_Details, Customers,Categories,Products, Employees


SELECT E.FirstName+' '+E.LastName AS CALISANLAR,E.TitleOfCourtesy,E.Title,E.HireDate,CU.City,CU.Phone,P.ProductName,P.UnitPrice,P.UnitsInStock,OD.UnitPrice,OD.Quantity FROM Categories C JOIN Products P ON C.CategoryID=P.CategoryID JOIN [Order Details] OD ON P.ProductID=OD.ProductID JOIN Orders O ON  OD.OrderID=O.OrderID JOIN Customers CU ON O.CustomerID=CU.CustomerID JOIN Employees E ON O.EmployeeID=E.EmployeeID


