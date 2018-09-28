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


