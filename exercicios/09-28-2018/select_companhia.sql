SELECT * FROM COMPANHIA.ADMINISTRACAO.DEPARTAMENTO AS ADMDP

----------------------------------------------------

SELECT DISTINCT TOP 2 ADMDP.Dnome
FROM COMPANHIA.ADMINISTRACAO.DEPARTAMENTO AS ADMDP;

----------------------------------------------------

SELECT TOP 1 EP.Pnome
FROM COMPANHIA.ADMINISTRACAO.EMPREGADO AS EP
ORDER BY EP.Salario DESC;

---------------------------------------------------

SELECT 
	EP.Pnome
	, EP.Mnome
	, EP.Unome
	, concat(EP.Pnome, EP.Mnome, EP.Unome) AS 'Nome completo'
	, year(getdate()) AS Ano
FROM ADMINISTRACAO.EMPREGADO AS EP
ORDER BY EP.Salario DESC;

--------------------------------------

SELECT year(getdate());

--------------------------------------

SELECT 
	upper(EP.Pnome)
	, lower(EP.Mnome)
	, unicode(cast(EP.Unome AS NVARCHAR)) AS 'Nem sei o que é'
	, concat(EP.Pnome, EP.Mnome, EP.Unome) AS 'Nome completo'
FROM ADMINISTRACAO.EMPREGADO AS EP

--------------------------------------------------------------

SELECT 
	EP.CPF_super,
	EP.Pnome
FROM	COMPANHIA.ADMINISTRACAO.EMPREGADO AS EP
WHERE
	EP.Dnum =5 AND EP.CPF_super != '888665555';

-----------------------------------------------
SELECT 
	EP.CPF_super,
	EP.Pnome	
FROM	COMPANHIA.ADMINISTRACAO.EMPREGADO AS EP
WHERE
	EP.Dnum IN (5, 4, 1)
------------------------------------------
	SELECT 
	EP.CPF_super,
	EP.Pnome
	
FROM	COMPANHIA.ADMINISTRACAO.EMPREGADO AS EP

WHERE
	EP.Salario >= 20000 AND Ep.Salario <= 40000;

	
----------------------------------------------
SELECT 
	EP.CPF_super
	, EP.Pnome
FROM
	COMPANHIA.ADMINISTRACAO.EMPREGADO AS EP
WHERE
	EP.Salario BETWEEN 2000 AND 4000;
	
---------------------------------------

SELECT * FROM COMPANHIA.ADMINISTRACAO.EMPREGADO WHERE CPF_super <> '33344555';
	
-----------------------------------------

