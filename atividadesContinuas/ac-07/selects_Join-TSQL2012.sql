/*
 * TOPZERA PRODUCTION 05/10/2108
 * 
 */

/* Exercício 1 */
SELECT
	  ORD.orderid AS 'Numero do pedido'
	, CS.contactname AS 'Nome do Contato'
	, CS.country AS 'País'
	, ORD.orderdate AS 'Data do pedido'
FROM TSQL2012.Sales.Orders AS ORD
JOIN TSQL2012.Sales.Customers AS CS ON CS.custid = ORD.custid

/* EXERCICIO 2 */
SELECT
	  ORD.orderid AS 'Numero do pedido'
	, CS.contactname AS 'Nome do Contato'
	, CS.country AS 'País'
	, ORD.orderdate AS 'Data do pedido'
	, CONCAT(EP.firstname, N' ', EP.lastname) AS 'Nome completo do empregado'
	, EP.country AS 'Pais do empregado'
FROM TSQL2012.Sales.Orders AS ORD
JOIN TSQL2012.Sales.Customers AS CS ON CS.custid = ORD.custid
JOIN TSQL2012.HR.Employees AS EP ON EP.empid = ORD.empid
WHERE EP.country LIKE N'%UK%'

/* EXERCICIO 3 */
SELECT
	  ORD.orderid AS 'Numero do pedido'
	, CS.contactname AS 'Nome do Contato'
	, CS.country AS 'País Do cliente'
	, ORD.orderdate AS 'Data do pedido'
	, CONCAT(EP.firstname, N' ', EP.lastname) AS 'Nome completo do empregado'
FROM TSQL2012.Sales.Orders AS ORD
JOIN TSQL2012.Sales.Customers AS CS ON CS.custid = ORD.custid
JOIN TSQL2012.HR.Employees AS EP ON EP.empid = ORD.empid
WHERE CS.country LIKE N'%BRAZIL%'
ORDER BY ORD.orderdate DESC

/* EXERCICIO 4 */
SELECT
	ORD.orderid AS 'Numero do pedido'
	, ORD.orderdate AS 'Data do pedido'
	, CS.contactname AS 'Nome do Contato'
	, CONCAT(EP.firstname, N' ', EP.lastname) AS 'Nome completo do empregado'
	, EP.country AS 'País Do Empregado'
	, CP.companyname AS 'Nome da empresa de entrega'	
FROM TSQL2012.Sales.Orders AS ORD
	JOIN TSQL2012.Sales.Customers AS CS ON CS.custid = ORD.custid
	JOIN TSQL2012.HR.Employees AS EP ON EP.empid = ORD.empid
	JOIN TSQL2012.Sales.Shippers AS CP ON CP.shipperid = ORD.shipperid
WHERE EP.country LIKE N'%USA%' 
	AND CP.companyname LIKE '%Shipper ETYNR%' 
	OR  CP.companyname LIKE '%Shipper GVSUA%'
ORDER BY ORD.orderid DESC

/* EXERCICIO 5 */
SELECT 
	PRODUCTS.productid 
	, PRODUCTS.productname
	, CATEGORY.categoryname
	, PRODUCTS.supplierid
	, PRODUCTS.unitprice
	, PRODUCTS.discontinued	
FROM TSQL2012.Production.Products AS PRODUCTS
	JOIN TSQL2012.Production.Categories AS CATEGORY 
	ON CATEGORY.categoryid = PRODUCTS.categoryid
WHERE CATEGORY.categoryname LIKE '%Beverages%'
	AND PRODUCTS.unitprice < 30
ORDER BY PRODUCTS.unitprice DESC
	
/* EXERCICIO 6 */
SELECT  
	DETAIL.orderid
	, PRODUCT.productname AS 'Nome do Produto'
	, SUPLIER.companyname AS 'Nome da empresa de entrega'
	, DETAIL.qty AS 'Quantidade de produtos'
FROM TSQL2012.Sales.OrderDetails AS DETAIL
JOIN TSQL2012.Production.Products AS PRODUCT ON PRODUCT.productid = DETAIL.productid 
JOIN TSQL2012.Production.Suppliers AS SUPLIER ON SUPLIER.supplierid = PRODUCT.supplierid 
WHERE DETAIL.qty > 100
ORDER BY PRODUCT.productname ASC, DETAIL.qty DESC

/* EXERCICIO 7 */
SELECT
	DETAIL.orderid
	, PRODUCT.productname
	, SUPLIER.contactname AS 'Nome do contato do'
FROM TSQL2012.Sales.OrderDetails AS DETAIL
JOIN TSQL2012.Production.Products AS PRODUCT ON PRODUCT.productid = DETAIL.productid 
JOIN TSQL2012.Production.Suppliers AS SUPLIER ON SUPLIER.supplierid = PRODUCT.supplierid 
		

SELECT *
FROM TSQL2012.Production.Suppliers
FROM TSQL2012.Production.Products
FROM TSQL2012.Sales.Orders
FROM TSQL2012.Production.Categories
FROM TSQL2012.Production.Categories