------------------------------------------------ Задача 1

-- Вывести ко-во поставщиков не из UK и не из China

-- SELECT COUNT(*) AS quantity_suppliers
-- FROM Suppliers
-- WHERE Country NOT IN ('UK', 'China')

------------------------------------------------ Задача 2

-- Вывести среднюю/MAX/MIN стоимости и ко-во товаров из категорий 3 и 5

-- SELECT 
--       MAX(Price) AS max_price,
--       MIN(Price) AS min_price,
--       AVG(Price) AS avg_price,
--       COUNT(*) AS total_products
-- FROM Products
-- WHERE CategoryID IN (3, 5)

------------------------------------------------ Задача 3

-- Вывести общую сумму проданных товаров

-- SELECT   SUM(Price) AS total_cost 
-- FROM OrderDetails
-- JOIN Products ON OrderDetails.ProductID	= Products.ProductID

------------------------------------------------ Задача 4

-- Вывести ко-во стран, которые поставляют напитки

-- SELECT COUNT(*) AS total_country,
--         Suppliers.Country        
-- FROM Suppliers
-- JOIN Categories ON Suppliers.CategoryID = Categories.CategoryID
-- JOIN Products ON Categories.ProductID =Products.ProductID
-- WHERE CategoryName = 'Beverages'

-- здесь не получается,путаюсь в JOIN


------------------------------------------------ Задача 5

-- Вывести сумму, на которую было отправлено товаров клиентам в USA

-- SELECT SUM(Price) AS total_price
-- FROM Products
-- JOIN Suppliers ON Products.SupplierID =  Suppliers.Suppliers 
-- JOIN OrderDetails ON Suppliers.OrderDetailID = OrderDetails.OrderDetailID
-- JOIN Customers ON OrderDetails.CustomerID = Customers.CustomerID
-- WHERE Country = 'USA'


-- здесь тоже не получилось ...