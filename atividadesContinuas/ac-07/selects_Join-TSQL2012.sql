/*
 * TOPZERA PRODUCTION 05/10/2108 até 12/10/2108
 * João Vitor Paulino 	- 1801021 - paulino.joaovitor@yahoo.com.br
 * Daniel Roberto 		- 1800479 - bruce-irom@hotmail.com
 */

/* 
    EXERCICIO 1 
	Devolver os apelidos
	número do pedido (orderid), 
	data do pedido (orderdate),
	nome do contato (contactname) 
	e o país (country).   
*/
SELECT
	  ORD.orderid AS 'Numero do pedido'
	, CS.contactname AS 'Nome do Contato'
	, CS.country AS 'País'
	, ORD.orderdate AS 'Data do pedido'
FROM TSQL2012.Sales.Orders AS ORD
	JOIN TSQL2012.Sales.Customers AS CS ON CS.custid = ORD.custid

/*
	EXERCICIO 2 
	Retornar os apelidos 
	data do pedido (orderdate), 
	nome do contato (contactname), 
	nome completo do empregado (firstname/lastname) 
	e país do empregado (country), 
	onde o país do empregado seja Inglaterra.
*/
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

/* 
	EXERCICIO 3 
	Retornar com os apelidos 
	Número do pedido (orderid), 
	Data do pedido (orderdate), 
	Nome do contato do cliente (contactname), 
	Nome completo do empregado (firstname/lastname) 
	e País do cliente (country), 
	onde o país do cliente seja Brasil (Brazil), 
	ordenado pela data do pedido mais recente	
*/
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

/* 
   EXERCICIO 4 
   Retornar com os apelidos:
   Número do pedido (orderid), 
   Data do pedido (orderdate), 
   Nome do contato (contactname), 
   Nome completo do empregado (firstname/lastname), 
   País do empregado (country)  
   Nome da empresa de entrega (companyname), 
   onde o país do empregado seja Estados Unidos (USA) 
   e a empresa de entrega seja Shipper ETYNR ou Shipper GVSUA. 
   Ordene pelo número do pedido.
 */
SELECT
	ORD.orderid AS 'Numero do pedido'
	, ORD.orderdate AS 'Data do pedido'
	, CS.contactname AS 'Nome do Contato'
	, CONCAT(EP.firstname, N' ', EP.lastname) AS 'Nome completo do empregado'
	, EP.country AS 'País Do Empregado'
	, CP.companyname AS 'Nome da empresa de entrega'	
FROM TSQL2012.Sales.Orders AS ORD
	JOIN TSQL2012.Sales.Customers AS CS ON CS.custid = ORD.custid
	JOIN TSQL2012.HR.Employees    AS EP ON EP.empid = ORD.empid
	JOIN TSQL2012.Sales.Shippers  AS CP ON CP.shipperid = ORD.shipperid
WHERE EP.country LIKE N'%USA%' 
	AND (
		CP.companyname LIKE '%Shipper ETYNR%' OR  
		CP.companyname LIKE '%Shipper GVSUA%'
	)
ORDER BY ORD.orderid DESC

/* 
    EXERCICIO 5 
	Retorne todas as informações de Produtos e o nome da categoria, 
	onde esta seja ‘Beverages’ 
	e o preço do produto (unitprice) seja menor que 30, 
	ordenado pelo preço de forma descendente.  
 */
SELECT 
	PRODUCTS.productid AS 'Id do Produto'
	, PRODUCTS.productname AS 'Nome do produto'
	, CATEGORY.categoryname AS 'Categoria do produto'
	, PRODUCTS.unitprice AS 'Preço unitário'
	, PRODUCTS.discontinued AS 'Descontinuado'
FROM TSQL2012.Production.Products AS PRODUCTS
	JOIN TSQL2012.Production.Categories AS CATEGORY ON CATEGORY.categoryid = PRODUCTS.categoryid
WHERE CATEGORY.categoryname LIKE '%Beverages%'
	AND PRODUCTS.unitprice < 30
ORDER BY PRODUCTS.unitprice DESC
	
/*  EXERCICIO 6 
	Devolva com os apelidos, 
	Nome do produto (productname), 
	Nome da empresa de entrega (companyname) 
	e Quantidade de produtos (qty), 
	quando essa ultrapassar 100 unidades. 
	Ordene pelo nome do produto ascendente 
	e quantidade de forma descendente
 */
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

/* 
 	EXERCICIO 7 
	Retorne com os apelidos, 
	Nome do contato do cliente (contactname),
	Nome do produto (productname), 
	Quantidade de produtos (qty), 
	Data do pedido (orderdate) 
	e Cidade do fornecedor (city), 
	onde a data do pedido seja todo o mês de julho de 2006, 
	a quantidade de produtos seja maior ou igual a 20 e menor que 60, 
	o nome do produto inicie por Product A ou Product G, 
	o nome da cidade do fornecedor seja Stockholm, Sydney, Sandvika ou Ravenna. 
	Ordene pelo número do empregado (empid) de forma descendente  
*/
SELECT
	SALEORDER.orderid AS 'Id da venda'
	, CUSTOMER.contactname AS 'Contato do cliente'
	, SALEDETAIL.qty AS 'Quantidade de produtos'
	, SALEORDER.orderdate AS 'Data do pedido'
	, PRODUCT.productname AS 'Nome do produto'
	, SALER.city AS 'Cidade do fornecedor ('
FROM TSQL2012.Sales.Orders AS SALEORDER
	JOIN TSQL2012.Sales.OrderDetails 	AS SALEDETAIL 	ON SALEDETAIL.orderid = SALEORDER.orderid  
	JOIN TSQL2012.Sales.Customers 		AS CUSTOMER 	ON CUSTOMER.custid = SALEORDER.custid  
	JOIN TSQL2012.Production.Products	AS PRODUCT 		ON PRODUCT.productid = SALEDETAIL.productid  
	JOIN TSQL2012.Production.Suppliers 	AS SALER 		ON SALER.supplierid = PRODUCT.supplierid  
WHERE 1 = 1
	AND (
		SALEORDER.orderdate >= '2006-01-07' AND 
		SALEORDER.orderdate <= '2006-30-07'
	) 
	AND (
		SALEDETAIL.qty > 20  AND 
		SALEDETAIL.qty < 60
	)
	AND (
		PRODUCT.productname LIKE '%Product A%' OR  
		PRODUCT.productname LIKE '%Product G%'
	)
	AND ( 
		SALER.city LIKE '%Stockholm%' OR  
		SALER.city LIKE '%Sydney%' OR  
		SALER.city LIKE '%Sandvika%' OR  
		SALER.city LIKE '%Ravenna%'
	)
ORDER BY SALEORDER.empid DESC