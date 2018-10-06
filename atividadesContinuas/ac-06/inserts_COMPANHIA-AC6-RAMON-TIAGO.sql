/*
 * Nome: Tiago Beneteli  	RA:1800804
 * Nome: Ramon C Pires		RA:1800260
 */

--EXERCICIO 1
SELECT 
EM.Pnome,
EM.Mnome,
EM.Unome,
EM.CPF,
EM.Endereco,
EM.Data_nasc,
EM.Sexo,
EM.Salario,
EM.CPF_super,
EM.Dnum
FROM ADMINISTRACAO.EMPREGADO AS EM  

SELECT 
DE.Nome_dep, 
DE.ECPF, 
DE.Sexo, 
DE.Data_nasc, 
DE.Relacionamento
FROM ADMINISTRACAO.DEPENDENTE AS DE  

SELECT 
DP.Dnome,
DP.Dnumero,
DP.CPF_ger,
DP.Data_ini_ger
FROM ADMINISTRACAO.DEPARTAMENTO AS DP  

SELECT 
DL.Dnumero, 
DL.Dlocal
FROM ADMINISTRACAO.DEPTO_LOCAL AS DL  

SELECT 
PRJ.Pnome,
PRJ.Pnumero,
PRJ.Plocal,
PRJ.Dnum
FROM ADMINISTRACAO.PROJETO AS PRJ  
			
SELECT 
WI.ECPF,
WI.Pno,
WI.Horas
FROM ADMINISTRACAO.TRABALHA_EM AS WI  

--EXERCICIO 2
SELECT 
CONCAT(EM.Pnome,' ',EM.Mnome,' ',EM.Unome ) AS 'Nome completo'
EM.Pnome AS  'Primeiro Nome',
EM.Mnome AS  'Nome do meio',
EM.Unome AS 	'Último Nome',
FROM ADMINISTRACAO.EMPREGADO AS EM

/* EXERCICIO 3  
A) Renomeando as colunas usando o keyword "AS" em frente a tabela depois da cláusula where
B) está aqui em baixo 
*/

--EXERCICIO 3
SELECT 
EMP.Pnome + ' ' + EMP.Mnome + ' ' + EMP.Unome AS 'Nome Completo'
FROM ADMINISTRACAO.EMPREGADO AS EMP
SELECT 
upper(Pnome) AS 'First Name',
lower(Mnome) AS 'Middle Name',
unicode(cast(Unome AS nvarchar)) AS 'UniCode',
EMP.Salario AS 'Salario'
FROM ADMINISTRACAO.EMPREGADO AS EMP


--EXERCICIO 4
SELECT
EP.Pnome,
EP.CPF_super
FROM ADMINISTRACAO.EMPREGADO AS EP
WHERE Ep.Salario > 25000 

--EXERCICIO 5
SELECT 
EP.Pnome ,
EP.Salario
FROM ADMINISTRACAO.EMPREGADO AS EP
WHERE EP.Salario >= 25000 AND EP.Dnum IN (5)
	
--EXERCICIO 6
DECLARE @MEDIA FLOAT 
SELECT  @MEDIA = avg(EP.Salario) FROM ADMINISTRACAO.EMPREGADO AS EP
SELECT 
EP.Pnome,
EP.Salario 
FROM ADMINISTRACAO.EMPREGADO AS EP
WHERE (EP.Salario > @MEDIA AND EP.Dnum = 5) OR (EP.Salario > 30000 AND EP.Dnum = 4)

--EXERCICIO 7
SELECT 
EP.Pnome
EP.CPF_super,
EP.Salario
FROM ADMINISTRACAO.EMPREGADO AS EP
WHERE EP.CPF_super IS NULL
SELECT 
EP.Pnome
EP.CPF_super,
EP.Salario
FROM ADMINISTRACAO.EMPREGADO AS EP
WHERE EP.CPF_super IS NOT NULL