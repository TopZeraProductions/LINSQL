INSERT INTO lms.dbo.Aluno (Nome,Email,Celular,RA,Foto) VALUES 
    ('daniel','danielsqlouro@hotmail.com','(11)66954-7550',16855151,NULL)
    , ('tiago','tiagobene@hotmai.com','(11)88988-4450',18516112,NULL)
    , ('Joao','joaocoddeouro@hotmail.com','(11)88878-7447',15558521,NULL)
    , ('ramon','ramoncigarro@hotmail.com','(11)66988-7550',51480558,NULL)
    , ('denis','denispcp@hotmail.com','(11)88584-7550',16364861,NULL) 

INSERT INTO lms.dbo.Atividade (Titulo,Descricao,Conteudo,Tipo,Extras,IdProfessor) VALUES 
    ('SELECTS','Selecionar dados de varias tabelas','TSQL','Teste','faz as juncões necessarias para o select',1)
    , ('JOINS','Fazer os joins de varias tabelas','TSQL','Teste','Fazer os joins',1)
    , ('INSERTS','Fazer os inserts de SQL para conseguir puxar com os selects','TSQL','Teste','Insertar valores coerentes',1)
    , ('CONSTRAINTS','Fazer os constraints de Check e unique no banco de dados','TSQL','Teste','Criar constraints para assegurar a iintegridade do banco de dados',1)
    , ('CREATE TABLES','Criar tabelas no banco de dados','TSQL','Teste','Criar tabelas no banco de dados',1)
    , ('CREATE DATABASE','Criar bancos de dados ','TSQL','Teste','Criar bancos de dados',1)
    , ('PROCEDURES','Criar Procedures para fazer funcoes do banco específicas ','TSQL','Teste','Criar Procedures',1)
    , ('TRIGGERS','Criar Triggers','TSQL','Teste','Criar Triggers',1)
    , ('TRANSACTS','Criar Transacts para efetuar Updates','TSQl','Teste','Criar Transaçoes',1)
    , ('UPDATES','Criar Updates para alterar valores','TSQL','Teste','Fazer updates sem whre',1)
    , ('IF','Estruturas de controle em Python','Python','Teste','Fazer programas básicos em Python',1)
    , ('ELSE','Estrutura de controle novamente','Python','Teste','Programas básicos em python',2)
    , ('while','Laço de repetição em python','Python','Teste','Programas básicos em python',2)
    , ('Do','Laço de repetição em python','Python','Teste','Programas básicos em python',2)
    , ('For','Laço de repetição em python','Python','Teste','Programas básicos em python',2)
    , ('Funcoes','Fucoes tipo void','Python','Teste','Programas básicos em python',2)
    , ('Funcoes Int','Funcoes Tipo Int','Python','Teste','Programas básicos em python',2)
    , ('Funcoes  Double','Funcoes Tipo Int','Python','Teste','Programas básicos em python',2)
    , ('Parametros','Parametros de funcoes','Python','Teste','Programas básicos em python',2)
    , ('Retornos','Retirno de funções','Python','Teste','Programas básicos em python',2)

INSERT INTO lms.dbo.AtividadeVinculada (IdAtividade,IdProfessor,IdDisciplinaOfertada,Rotulo,Status,DtInicioRespostas,DtFimRespostas) VALUES 
    (1,1,1,'Aberta','Fechada','2018-11-01 00:00:00.000','2018-11-06 00:00:00.000')
    , (2,2,2,'Disponibilizada','Prorrogada','2018-11-02 00:00:00.000','2018-11-07 00:00:00.000')
    , (3,3,3,'Aberta','Aberta','2018-11-03 00:00:00.000','2018-11-08 00:00:00.000')
    , (4,4,4,'Aberta','Fechada','2018-11-04 01:00:00.000','2018-11-09 00:00:00.000')
    , (5,5,5,'Aberta','Encerrada','2018-11-05 00:00:00.000','2018-11-10 00:00:00.000')
    , (10,1,1,'Aberta','Encerrada','2018-11-05 00:00:00.000','2018-11-10 00:00:00.000')
    , (11,1,1,'Aberta','Encerrada','2018-11-05 00:00:00.000','2018-11-10 00:00:00.000')
    , (12,1,1,'Aberta','Encerrada','2018-11-05 00:00:00.000','2018-11-10 00:00:00.000')
    , (13,1,1,'Aberta','Encerrada','2018-11-05 00:00:00.000','2018-11-10 00:00:00.000')
    , (14,1,1,'Aberta','Encerrada','2018-11-05 00:00:00.000','2018-11-10 00:00:00.000')
    , (2,1,1,'Aberta','Aberta','2018-11-01 00:00:00.000','2018-11-01 00:00:00.000')

INSERT INTO lms.dbo.Coordenador (Id_usuario,Nome,Email,Celular) VALUES 
    (1,'Pedro','Pedro@impacta.br','(11)98764-4200')
    , (2,'Alberto','Alberto@impacta.br','(11)98321-1234')
    , (3,'Roberto','Roberto@impacta.br','(11)98123-5678')
    , (4,'Gilberto','Gilberto@impacta.br','(11)98456-1526')
    , (5,'Adalberto','Adalberto@impacta.br','(11)98789-2058')
    
    
INSERT INTO lms.dbo.Curso (Nome) VALUES 
    ('Analise e desenvolvimento de sistemas')
    , ('Desenvolvimento de jogos')
    , ('Engenharia da computação')
    , ('Redes de computação')
    , ('Sistemas de Informações')
    
INSERT INTO lms.dbo.Disciplina (Nome,[Data],Status,PlanoDeEnsino,CargaHoraria,Competencias,Habilidades,Ementa,ConteudoProgramatico,BibliografiaBasica,BibliografiaComplementar,PercentualPratico,PercentualTeorico,IdCoordenador) VALUES 
    ('Linguegem SQL','2018-11-08 21:38:38.450','ABERTA','basico em sql',80,'Arquitetar um Bancos de dados','Conhecimento das regras de mapeamento dos modelos lógico/conceitual para o físico.','criação, inserção e consultas em banco de dados','Linguagem SQL','CORONEL, C.; MORRIS, S. Database Systems: design, implementation and management. 11a.ed. São Paulo: Cengage do Brasil, 2014.','ELMASRI,0 R. E.; NAVATHE, S. B. Sistemas de Banco de Dados. 6. Ed. São Paulo: Pearson, 2011.',75,25,1)
    , ('Linguegem LPII','2018-11-08 21:38:38.450','FECHADA','basico em LPII',80,'programação em python ','Conhecimento de lógica e algoritmos','comandos if e else, for e while, lista e função','Linguagem LP2','CORONEL, C.sign, implementat; MORRIS, S. Database Systems: de ion and management. 11a.ed. São Paulo: Cengage do Brasil, 2014.','ELMASRI,0 R. E.nco de ; NAVATHE, S. B. Sistemas de Ba Dados. 6. Ed. São Paulo: Pearson, 2011.',80,20,2)
    , ('Devops','2018-11-08 21:38:38.450','ABERTA','scrum e docker',80,'Teste de programação e junção de containers no docker','Conhecimento básico em proramação','if else e outros paranaue','Desenvolvilmento e operação','CORONEL, C.sign, implementat; MORRIS, S. Database Systems: de ion and management. 11a.ed. São Paulo: Cengage do Brasil, 2014.','ELMASRI,0 R. E.nco de ; NAVATHE, S. B. Sistemas de Ba Dados. 6. Ed. São Paulo: Pearson, 2011.',90,10,3)
    , ('TecWeb','2018-11-08 21:38:38.450','ABERTA','html css e js',80,'Desenvolvimento em java script com designers em html e css','Conhecimento básico em lógica de programação.','funções e comandos básicos em java script criação de paginas usando html e css','Desenvolvilmento de sites','CORONEL, C.sign, implementat; MORRIS, S. Database Systems: de ion and management. 11a.ed. São Paulo: Cengage do Brasil, 2014.','ELMASRI,0 R. E.nco de ; NAVATHE, S. B. Sistemas de Ba Dados. 6. Ed. São Paulo: Pearson, 2011.',70,30,4)
    , ('Engenharia de software','2018-11-08 21:38:38.450','ABERTA','scrum',80,'Praticar e aperfeiçoar  metodologias ageis','Conhecimento básico de gestão de projetos','Acrescentar scrum em um projeto real','Agilizar o processo de desenvolvimento de software','CORONEL, C.sign, implementat; MORRIS, S. Database Systems: de ion and management. 11a.ed. São Paulo: Cengage do Brasil, 2014.','ELMASRI,0 R. E.nco de ; NAVATHE, S. B. Sistemas de Ba Dados. 6. Ed. São Paulo: Pearson, 2011.',60,40,5)
    
INSERT INTO lms.dbo.DisciplinaOfertada (IdCoordenador,DtInicioMatricula,DtFimMatricula,IdDisciplina,IdCurso,ANO,Semestre,Turma,IdProfessor,Metodologia,Recursos,CriterioAvaliacao,PlanoDeAulas) VALUES 
    (1,NULL,NULL,1,1,2018,1,'A',1,'Teoria utilizando Aulas expositivas de projetor e lousa eletrônica.','Tecnologia','São aplicadas 10 atividades, uma prova semestral e uma prova substituta caso o aluno precise. ','Apresentação da turma, metodo ações sobre o ambiente, conteúdo programático. Explicar uma VM, acesso ao SQL')
    , (1,NULL,NULL,1,1,2018,1,'B',1,'Teoria utilizando Aulas expositivas de projetor e lousa eletrônica.','Tecnologia','São aplicadas 10 atividades, uma prova semestral e uma prova substituta caso o aluno precise.','Apresentação da turma, metodo ações sobre o ambiente, conteúdo programático. Programar em python')
    , (1,NULL,NULL,1,1,2018,2,'A',1,'Teoria utilizando Aulas expositivas de projetor e lousa eletrônica.','Tecnologia','São aplicadas 10 atividades, uma prova semestral e uma prova substituta caso o aluno precise.','Apresentação da turma, metodo ações sobre o ambiente, conteúdo programático. Desenvolver testes de programação e subir container com docker')
    , (1,NULL,NULL,1,1,2018,2,'B',1,'Teoria utilizando Aulas expositivas de projetor e lousa eletrônica.','Tecnologia','São aplicadas 10 atividades, uma prova semestral e uma prova substituta caso o aluno precise.','Apresentação da turma, metodo ações sobre o ambiente, conteúdo programático. Desenvolver telas com JavaScript, html e css')
    , (2,NULL,NULL,2,1,2018,1,'A',2,'Teoria utilizando Aulas expositivas de projetor e lousa eletrônica.','Tecnologia','São aplicadas 10 atividades, uma prova semestral e uma prova substituta caso o aluno precise.','Apresentação da turma, metodo ações sobre o ambiente, conteúdo programático. Implementar metodologias ageis em projetos')
    , (2,NULL,NULL,2,1,2018,1,'B',2,'Teoria utilizando Aulas expositivas de projetor e lousa eletrônica.','Tecnologia','São aplicadas 10 atividades, uma prova semestral e uma prova substituta caso o aluno precise.','Apresentação da turma, metodo ações sobre o ambiente, conteúdo programático. Implementar metodologias ageis em projetos')
    , (2,NULL,NULL,2,1,2018,2,'A',1,'Teoria utilizando Aulas expositivas de projetor e lousa eletrônica.','Tecnologia','São aplicadas 10 atividades, uma prova semestral e uma prova substituta caso o aluno precise.','Apresentação da turma, metodo ações sobre o ambiente, conteúdo programático. Implementar metodologias ageis em projetos')
    , (2,NULL,NULL,2,1,2018,2,'B',1,'Teoria utilizando Aulas expositivas de projetor e lousa eletrônica.','Tecnologia','São aplicadas 10 atividades, uma prova semestral e uma prova substituta caso o aluno precise.','Apresentação da turma, metodo ações sobre o ambiente, conteúdo programático. Implementar metodologias ageis em projetos')
    , (3,NULL,NULL,3,1,2018,1,'A',3,'Teoria utilizando Aulas expositivas de projetor e lousa eletrônica.','Tecnologia','São aplicadas 10 atividades, uma prova semestral e uma prova substituta caso o aluno precise.','Apresentação da turma, metodo ações sobre o ambiente, conteúdo programático. Implementar metodologias ageis em projetos')
    , (3,NULL,NULL,3,1,2018,1,'B',3,'Teoria utilizando Aulas expositivas de projetor e lousa eletrônica.','Tecnologia','São aplicadas 10 atividades, uma prova semestral e uma prova substituta caso o aluno precise.','Apresentação da turma, metodo ações sobre o ambiente, conteúdo programático. Implementar metodologias ageis em projetos')

    
INSERT INTO lms.dbo.Entrega (IdAluno,IdAtividadeVinculada,Titulo,Resposta,DtEntrega,Status,IdProfessor,Nota,DtAvaliacao,Obs) VALUES 
 (1,1,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,'2018-11-08','Nada declarado
')
,(1,2,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,'2018-11-08','Nada declarado
')
,(1,3,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(1,4,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(1,5,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(1,6,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(1,7,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(1,8,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(1,9,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(1,10,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
;
INSERT INTO lms.dbo.Entrega (IdAluno,IdAtividadeVinculada,Titulo,Resposta,DtEntrega,Status,IdProfessor,Nota,DtAvaliacao,Obs) VALUES 
(2,1,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(2,2,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(2,3,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(2,4,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(2,5,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(2,6,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(2,7,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(2,8,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(2,9,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(2,10,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
;
INSERT INTO lms.dbo.Entrega (IdAluno,IdAtividadeVinculada,Titulo,Resposta,DtEntrega,Status,IdProfessor,Nota,DtAvaliacao,Obs) VALUES 
(3,1,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(3,2,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(3,3,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(3,4,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(3,5,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(3,6,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(3,7,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(3,8,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(3,9,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,NULL,'Nada declarado
')
,(3,10,'Atividade Continua
','Não Foi respondido ainda','2018-11-08 21:39:11.000','Entregue',1,0.00,'2018-11-08','Nada declarado
')

INSERT INTO lms.dbo.Mensagem (IdAluno,IdProfessor,Assunto,Referencia,Conteudo,Status,DtEnvio,DtResposta,Resposta) VALUES 
(1,1,'ac','Professores da faculdadeimpacta','sql','Enviado','2018-11-01 00:00:00.000',NULL,'certo')
,(2,2,'ac ','Professores da faculdadeimpacta','lp2','Lido','2018-11-02 00:00:00.000',NULL,'certo')
,(3,3,'ac ','Professores da faculdadeimpacta','devops','Respondido','2018-11-03 00:00:00.000',NULL,'certo')
,(4,4,'ac ','Professores da faculdadeimpacta','tecweb','Enviado','2018-11-04 01:00:00.000',NULL,'certo')
,(5,5,'ac ','Professores da faculdadeimpacta','engenharia software','Enviado','2018-11-05 00:00:00.000',NULL,'certo')

INSERT INTO lms.dbo.Professor (Id_usuario,Email,Celular,Apelido) VALUES 
(1,'reginaldo@faculdadeimpacta.com.br','(11)93644-0252','lagreca')
,(2,'clovis@faculdadeimpacta.com.br','(11)96558-5822','Apertadinho')
,(3,'cassio@faculdadeimpacta.com.br','(11)95458-5982','queixo')
,(4,'jair@faculdadeimpacta.com.br','(11)91234-5652','mito')
,(5,'flavio@faculdadeimpacta.com.br','(11)98962-5892','cunha')
INSERT INTO lms.dbo.SolicitacaoMatricula (IdAluno,IdDisciplinaOfertada,DtSolicitacao,IdCoordenador,Status) VALUES 
(1,1,'2018-11-09 03:58:41.843',1,'Aprovada')
,(1,2,'2018-11-09 03:58:41.913',2,'Aprovada')
,(1,3,'2018-11-09 03:58:41.947',3,'Aprovada')
,(1,4,'2018-11-09 03:58:41.980',4,'Aprovada')
,(1,5,'2018-11-09 03:58:42.013',5,'Aprovada')
,(2,1,'2018-11-09 03:58:42.090',1,'Aprovada')
,(2,2,'2018-11-09 03:58:42.203',2,'Aprovada')
,(2,3,'2018-11-09 03:58:42.237',3,'Aprovada')
,(2,4,'2018-11-09 03:58:42.270',4,'Aprovada')
,(2,5,'2018-11-09 03:58:42.303',5,'Aprovada')
,(3,1,'2018-11-09 03:58:42.337',1,'Aprovada')
,(3,2,'2018-11-09 03:58:42.370',2,'Aprovada')
,(3,3,'2018-11-09 03:58:42.403',3,'Aprovada')
,(3,4,'2018-11-09 03:58:42.437',4,'Aprovada')
,(3,5,'2018-11-09 03:58:42.470',5,'Aprovada')

INSERT INTO lms.dbo.Usuario (Login,Senha,DtExpiracao) VALUES 
('daniel','3111986','1900-01-01')
,('tiago','1234567','1900-01-01')
,('joao','12345678','1900-01-01')
,('ramon','23456789','1900-01-01')
,('denis','76543210','1900-01-01')
