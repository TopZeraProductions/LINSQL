/*
 * Nome: Daniel r s rodrigues  	RA:1800479
 * Nome: Joao vitor paulino		RA:1801021
 */

/* EXERCICIO 1 */							
SELECT TOP 1000
	  EM.Pnome
	, EM.Mnome
	, EM.Unome
	, EM.CPF
	, EM.Endereco
	, EM.Data_nasc
	, EM.Sexo
	, EM.Salario
	, EM.CPF_super
	, EM.Dnum
FROM ADMINISTRACAO.EMPREGADO AS EM  

SELECT TOP 1000
	  DE.Nome_dep
	, DE.ECPF
	, DE.Sexo
	, DE.Data_nasc
	, DE.Relacionamento
FROM ADMINISTRACAO.DEPENDENTE AS DE  

SELECT TOP 1000
	  DP.Dnome
	, DP.Dnumero
	, DP.CPF_ger
	, DP.Data_ini_ger
FROM ADMINISTRACAO.DEPARTAMENTO AS DP  

SELECT TOP 1000
	    DL.Dnumero
	  , DL.Dlocal
FROM ADMINISTRACAO.DEPTO_LOCAL AS DL  

SELECT TOP 1000
	      PRJ.Pnome
	    , PRJ.Pnumero
	    , PRJ.Plocal
	    , PRJ.Dnum
FROM ADMINISTRACAO.PROJETO AS PRJ  
			
SELECT TOP 1000
	  WI.ECPF
	, WI.Pno
	, WI.Horas
FROM ADMINISTRACAO.TRABALHA_EM AS WI  

/* EXERCICIO ;2 */				
SELECT TOP 1000
	CONCAT(EM.Pnome,' ',EM.Mnome,' ',EM.Unome ) AS 'Nome completo'
	, EM.Pnome AS  'Primeiro Nome'
	, EM.Mnome AS  'Nome do meio'
    , EM.Unome AS 	'Último Nome'
FROM ADMINISTRACAO.EMPREGADO AS EM

/* EXERCICIO 3 
 * a) para nomear as colunas é necessário usar a keyword 'AS' em frente a tabela apó a cláusula WHERE 
 * b) a seguir!! 
 */

SELECT TOP 1000
	EMP.Pnome + ' ' + EMP.Mnome + ' ' + EMP.Unome AS 'Nome Completo'
FROM ADMINISTRACAO.EMPREGADO AS EMP

SELECT TOP 1000
	  upper(Pnome) AS 'First Name'
	, lower(Mnome) AS 'Middle Name'
	, unicode(cast(Unome AS nvarchar)) AS 'UniCode'
	, EMP.Salario AS 'Salario'
FROM ADMINISTRACAO.EMPREGADO AS EMP


/* EXERCICIO 4 */
SELECT
	EP.Pnome
	, EP.CPF_super
FROM ADMINISTRACAO.EMPREGADO AS EP
WHERE Ep.Salario > 25000 

/* EXERCICIO 5 */
SELECT TOP 1000
	EP.Pnome
	, DP.Dnome
	, EP.Salario
FROM ADMINISTRACAO.EMPREGADO AS EP
INNER JOIN ADMINISTRACAO.DEPARTAMENTO AS DP 
ON EP.Dnum = DP.Dnumero 
WHERE EP.Salario >= 25000 AND EP.Dnum IN (5)
	
/* EXERCICIO 6 */
DECLARE  @MEDIA FLOAT 
SELECT @MEDIA = avg(EP.Salario) FROM ADMINISTRACAO.EMPREGADO AS EP
SELECT TOP 1000
	EP.Pnome AS 'Nome'
	, EP.Salario AS 'Salario'
	, DP.Dnome AS 'Nome do departamento' 
FROM ADMINISTRACAO.EMPREGADO AS EP
JOIN ADMINISTRACAO.DEPARTAMENTO AS DP ON DP.Dnumero = EP.Dnum 
WHERE (EP.Salario > @MEDIA AND EP.Dnum = 5) OR (EP.Salario > 30000 AND EP.Dnum = 4)

/* EXERCICIO 7 */
SELECT TOP 1000
	EP.Pnome
	, EP.CPF_super
	, EP.Salario
FROM ADMINISTRACAO.EMPREGADO AS EP
WHERE EP.CPF_super IS NULL

SELECT TOP 1000
	EP.Pnome
	, EP.CPF_super
	, EP.Salario
FROM ADMINISTRACAO.EMPREGADO AS EP
WHERE EP.CPF_super IS NOT NULL