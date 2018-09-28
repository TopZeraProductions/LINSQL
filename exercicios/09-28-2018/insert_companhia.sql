USE COMPANHIA;
go

-- Não é possível inserir empregados nem departamentos. Por quê?
/*
INSERT INTO ADMINISTRACAO.EMPREGADO (Pnome, Mnome, Unome, CPF, Data_nasc, Endereco, Sexo, Salario, CPF_super, Dnum)
	VALUES ('John', 'B', 'Smith', '123456789', '1965-01-09', '731 Fondren, Houston, TX', 'M', 30000, '333445555', 5);

INSERT INTO ADMINISTRACAO.DEPARTAMENTO(Dnome, Dnumero, CPF_ger, Data_ini_ger)
	VALUES ('Pesquisa', 5, '333445555', '1988-05-22');
*/

-- Retirar temporariamente restrições de chave estrangeira.
ALTER TABLE ADMINISTRACAO.EMPREGADO DROP fk_emp_super;
ALTER TABLE ADMINISTRACAO.EMPREGADO DROP fk_emp_depto;
-- Por isso é bom dar um nome significativo para restrições.

INSERT INTO ADMINISTRACAO.EMPREGADO (Pnome, Mnome, Unome, CPF, Data_nasc, Endereco, Sexo, Salario, CPF_super, Dnum)
	VALUES	('John', 'B', 'Smith', '123456789', '1965-01-09', '731 Fondren, Houston, TX', 'M', 30000, '333445555', 5),
			('Franklin', 'T', 'Wong', '333445555', '1955-12-08', '3321 Castle, Spring, TX', 'M', 40000, '888665555', 5),
			('Alicia', 'J', 'Zelaya', '999887777', '1968-01-19', '638 Voss, Houston, TX', 'F', 25000, '987654321', 4),
			('Jennifer', 'S', 'Wallace', '987654321', '1941-06-20', '291 Berry, Bellaire, TX', 'F', 43000, '888665555', 4),
			('Ramesh', 'K', 'Narayan', '666884444', '1962-09-15', '975 Fire Oak, Humble, TX', 'M', 38000, '333445555', 5),
			('Joyce', 'A', 'English', '453453453', '1972-07-31', '5631 Rice, Houston, TX', 'F', 25000, '333445555', 5),
			('Ahmad', 'V', 'Jabbar', '987987987', '1969-03-29', '450 Stone, Houston, TX', 'M', 25000, '987654321', 4),
			('James', 'E', 'Borg', '888665555', '1937-11-10', '980 Dallas, Houston, TX', 'M', 55000, NULL, 1);
-- Podemos inserir a restrição de chave estrangeira do supervisor, mas não do departamento, por quê?
ALTER TABLE ADMINISTRACAO.EMPREGADO ADD CONSTRAINT fk_emp_super FOREIGN KEY (CPF_super) REFERENCES ADMINISTRACAO.EMPREGADO (CPF);

INSERT INTO ADMINISTRACAO.DEPARTAMENTO (Dnome, Dnumero, CPF_ger, Data_ini_ger)
	VALUES	('Pesquisa', 5, '333445555', '1988-05-22'),
			('Administração', 4, '987654321', '1995-01-01'),
			('Fábrica', 1, '888665555', '1981-06-19');

-- Agora podemos inserir a restrição de chave estrangeira de departamento em empregado.
ALTER TABLE ADMINISTRACAO.EMPREGADO ADD CONSTRAINT fk_emp_depto FOREIGN KEY (Dnum) REFERENCES ADMINISTRACAO.DEPARTAMENTO (Dnumero);

INSERT INTO ADMINISTRACAO.DEPTO_LOCAL (Dnumero, Dlocal)
	VALUES	(1, 'Houston'),
			(4, 'Stafford'),
			(5, 'Bellaire'),
			(5, 'Sugarland'),
			(5, 'Houston');

INSERT INTO ADMINISTRACAO.PROJETO (Pnome, Pnumero, Plocal, Dnum)
	VALUES	('Produto X', 1, 'Bellaire', 5),
			('Produto Y', 2, 'Sugarland', 5),
			('Produto Z', 3, 'Houston', 5),
			('Informatização', 10, 'Stafford', 4),
			('Reorganização', 20, 'Houston', 1),
			('Benefícios', 30, 'Stafford', 4);

INSERT INTO ADMINISTRACAO.TRABALHA_EM (ECPF, Pno, Horas)
	VALUES	('123456789', 1, 32.5),
			('123456789', 2, 7.5),
			('666884444', 3, 40.0),
			('453453453', 1, 20.0),
			('453453453', 2, 20.0),
			('333445555', 2, 10.0),
			('333445555', 3, 10.0),
			('333445555', 10, 10.0),
			('333445555', 20, 10.0),
			('999887777', 30, 30.0),
			('999887777', 10, 10.0),
			('987987987', 10, 35.0),
			('987987987', 30, 5.0),
			('987654321', 30, 20.0),
			('987654321', 20, 15.0),
			('888665555', 20, NULL);

INSERT INTO ADMINISTRACAO.DEPENDENTE (ECPF, Nome_dep, Sexo, Data_nasc, Relacionamento)
	VALUES	('333445555', 'Alice', 'F', '1986-04-05', 'Filha'),
			('333445555', 'Theodore', 'M', '1983-10-25', 'Filho'),
			('333445555', 'Joy', 'F', '1985-05-03', 'Esposa'),
			('987654321', 'Abner', 'M', '1942-02-28', 'Esposo'),
			('123456789', 'Michael', 'M', '1988-01-04', 'Filho'),
			('123456789', 'Alice', 'F', '1988-12-30', 'Filha'),
			('123456789', 'Elizabeth', 'F', '1967-05-05', 'Esposa');