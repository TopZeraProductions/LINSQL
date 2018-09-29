USE TSQL2012
-- EXERCICIO 1

SELECT

	PR.productid,
	PR.productname,
	PR.unitprice

FROM Production.Products AS PR

--WHERE PR.unitprice BETWEEN 19 AND 22;
WHERE PR.unitprice >= 19 AND PR.unitprice <= 22;

-- EXERCICIO 2

SELECT

	PR.productid,
	PR.productname,
	PR.unitprice

FROM Production.Products AS PR
--WHERE PR.unitprice IN(18, 10, 21.35)
WHERE PR.unitprice = 18 OR PR.unitprice = 10 OR PR.unitprice = 21.35;


-- EXERCICIO 3

SELECT
	 EM.empid
	,EM.titleofcourtesy
	, EM.firstname
	, EM.lastname
	, concat(EM.firstname, ' ', EM.lastname) AS 'Complete name'
FROM HR.Employees AS EM
WHERE Year(EM.birthdate) >= Year('1947-01-01') AND Year(EM.birthdate) <= Year('1965-12-31')

-- EXERCICIO 4
SELECT
	  EM.city
	, EM.region
	, EM.country
FROM HR.Employees AS EM
WHERE EM.city LIKE 'seattle' OR EM.country LIKE 'UK'


-- EXERCICIO 5 
SELECT
	  EM.empid
	, EM.firstname
	, EM.hiredate
FROM HR.Employees AS EM
WHERE Year(EM.hiredate) >= Year('2002-01-01') AND Year(EM.hiredate) <= Year('2004-12-31')


-- EXERCICIO 6  
SELECT TOP 20
	*
FROM 
	Sales.Orders AS OD
WHERE 
	OD.custid = 85


	