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