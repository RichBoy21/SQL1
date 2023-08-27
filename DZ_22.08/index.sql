1.
Удалить всех клиентов из China и Brazil

DELETE FROM Customers
WHERE Country IN ('China', 'Brazil')

2.
Вывести название категории, где самая высокая средняя стоимость товаров

SELECT  Categories.CategoryName,
        AVG(Products.Price) AS avg_salary
FROM Products
JOIN Categories  ON Products.CategoryID =Categories.CategoryID
ORDER BY avg_salary DESC
LIMIT 1

3.
Вывести названия трех товаров, которые продаются хуже всего

SELECT 	ProductName 
FROM OrderDetails
JOIN Products ON  OrderDetails.ProductID =  Products.ProductID
ORDER BY Quantity ASC
LIMIT 3

4.
Вывести название одного перевозчика, у которого меньше всего заказов

SELECT  ShipperName
FROM Orders
JOIN Shippers ON Orders.ShipperID=Shippers.ShipperID
GROUP BY ShipperID
ORDER BY COUNT(*)
LIMIT 1

5.
Вывести товары, добавив поле "цена со скидкой" (на англ.) в 15.5%

SELECT *,
Price *  0.845 AS discount_price
FROM Products
