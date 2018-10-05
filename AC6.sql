/*Nome: Daniel r s rodrigues  RA:1800479
Nome: Joao vitor paulino	RA:1801021
Nome: tiago beneteli	    RA:1800804
Nome: Ramon c pires		    RA:1800260 */


                             /* EXERCICIO 1* /
							
			SELECT ADMINISTRACAO FROM ADMINISTRACAO.EMPREGADO
			SELECT ADMINISTRACAO FROM ADMINISTRACAO.DEPARTAMENTO
			SELECT ADMINISTRACAO FROM ADMINISTRACAO.DEPTO_LOCAL
			SELECT ADMINISTRACAO FROM ADMINISTRACAO.PROJETO
			SELECT ADMINISTRACAO FROM DMINISTRACAO.TRABALHA_EM
			SELECT ADMINISTRACAO FROM ADMINISTRACAO.DEPENDENTE
			
				           /* EXERCICIO 2 */
				
			SELECT EP.Pnome AS  [Primeiro Nome]
				   EP.Mnome AS  [Nome do meio]
			     	EP.Unome AS [Último Nome]
					
							/* EXERCICIO 4 */
			SELECT
			
				EP.Pnome
				EP.CPF_super
					
			FROM ADMINISTRACAO.EMPREGADO AS EP
				
			WHERE
				Ep.Salario > 25000 
		
				   
					
							/* EXERCICIO 5 */
			SELECT
			
				EP.Pnome
				DP.Dnumero
					
			FROM ADMINISTRACAO.EMPREGADO AS EP AND ADMINISTRACAO.DEPARTAMENTO AS DP
				
			WHERE
				Ep.Pnome >=25000 AND DP.Dnumero IN (5)
				
				
						/* EXERCICIO 6 */
						
			SELECT 
				EP.Pnome
				Ep.Salario
				DP.Dnumero
				
			FROM ADMINISTRACAO.EMPREGADO AS EP AND ADMINISTRACAO.DEPARTAMENTO AS DP
			
			WHERE
				Ep.Salario > 35125	AND DP.Dnumero IN (5) OR EP.Salario > 30000 AND DP.Dnumero IN (4)
			
								/* EXERCICIO 7 */
								
			SELECT 
				EP.Pnome
				EP.Salario