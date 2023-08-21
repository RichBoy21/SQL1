Задача 1 Вывести информацию о заказах клиентов не из Germany и не из China

SELECT * 
FROM Orders
JOIN Customers ON Orders.CustomerID=Customers.CustomerID
WHERE Country NOT IN ('German', 'China')


Задача 2 Вывести два самых дорогих товара из категории Beverages

SELECT 
      Products.price
      
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Categories.CategoryName = 'Beverages'
ORDER BY Products.Price DESC
LIMIT 2

Задача 3 Удалить поставщиков из China

DELETE FROM Suppliers
WHERE Country = 'China'

Задача 4 Вывести все заказы клиента 10, которые повезет Federal Shipping

SELECT * 
FROM Orders
JOIN Shippers ON Orders.ShipperID =  Shippers.ShipperID
WHERE CustomerID = '10'
      AND
      ShipperName = 'Federal Shipping'

Задача 5 Вывести два самых дорогих напитка из UK

SELECT Products.ProductName, 
       Products.Price
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON  Products.SupplierID = Suppliers.SupplierID
WHERE Country = 'UK'  
      AND 
      Categories.CategoryName = 'Beverages'
ORDER BY Products.Price DESC
LIMIT 2;

Задача 6 Вывести страны-поставщики напитков

SELECT Suppliers.Country ,
       Categories.CategoryName,
FROM Suppliers
JOIN Products ON Suppliers.SupplierID = Products.SupplierID
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Categories.CategoryName = 'Beverages';