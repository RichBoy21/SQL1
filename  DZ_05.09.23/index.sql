 --1. Описать таблицу shippers с исп. механизма Constraints

 CREATE TABLE IF NOT EXISTS Shippers (
	ShipperID int primary key auto_increment,
	ShipperName varchar(64) not null,
	Phone int (64) not null,
	);

--Вывести заказы, сделанные с 1 мая 2022 по 20 мая 2022 

SELECT * 
FROM Orders
WHERE
	OrderDate BETWEEN '2022-01-05' AND '2022-20-05'

--Описать схему БД "онлайн-тестирование" с помощью инструмента онлайн-проектирования БД. 
--Необходимо предусмотреть регистрацию пользователя и выбор им тем для прохождения тестирования.



