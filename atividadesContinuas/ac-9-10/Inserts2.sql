INSERT INTO Usuario (Login,Senha) 
VALUES ('daniel',03111986),
	   --('tiago'         , 01234567),
	   --('joao'          , 12345678),
	   --('ramon'       , 23456789),
	   --('denis'        , 76543210),

INSERT INTO Coordenador (Id_usuario,Nome,Email,Celular)
VALUES (1,'Pedro'          ,'Pedro@impacta.br'      ,'(11)98764-4200'),
	   (2,'Alberto'        ,'Alberto@impacta.br'    ,'(11)98321-1234'),
	   (3,'Roberto'        ,'Roberto@impacta.br'    ,'(11)98123-5678'),
	   (4,'Gilberto'       ,'Gilberto@impacta.br'   ,'(11)98456-1526'),
	   (5,'Adalberto'      ,'Adalberto@impacta.br'   ,'(11)98789-2058')

INSERT INTO Aluno (Id_usuario,Nome,Email,Celular,RA)	
VALUES(1,'daniel'   ,'danielsqlouro@hotmail.com'	,'(11)66954-7550',16855151),
	 (2,'tiago'     ,'tiagobene@hotmai.com'			,'(11)88988-4450',18516112),
	 (3,'Joao'      ,'joaocoddeouro@hotmail.com'    ,'(11)88878-7447',15558521),
	 (4,'ramon'     ,'ramoncigarro@hotmail.com'		,'(11)66988-7550',51480558),
	 (5,'denis'     ,'denispcp@hotmail.com'			,'(11)88584-7550',16364861)
	
INSERT INTO Professor (Id_usuario,Email,Celular,Apelido)
VALUES (1  ,'reginaldo@faculdadeimpacta.com.br'    ,'(11)93644-0252'   ,'lagreca'),
	   (2  ,'clovis@faculdadeimpacta.com.br'       ,'(11)96558-5822'   ,'Apertadinho'),
	   (3  ,'cassio@faculdadeimpacta.com.br'       ,'(11)95458-5982'   ,'queixo'),
	   (4  ,'jair@faculdadeimpacta.com.br'         ,'(11)91234-5652'   ,'mito'),
	   (5  ,'flavio@faculdadeimpacta.com.br'       ,'(11)98962-5892'   ,'cunha')
	
INSERT INTO Disciplina (Nome,Status,PlanoDeEnsino,CargaHoraria,Competencias,Habilidades,Ementa,ConteudoProgramatico,BibliografiaBasica,BibliografiaComplementar,PercentualPratico,PercentualTeorico,IdCoordenador)
VALUES('Linguegem SQL'
	, 'ABERTA'
	, 'basico em sql'
	, 80
	, 'Arquitetar um Bancos de dados'
	, 'Conhecimento das regras de mapeamento dos modelos lógico/conceitual para o físico.'
	, 'criação, inserção e consultas em banco de dados'
	, 'Linguagem SQL'
	, 'CORONEL, C.; MORRIS, S. Database Systems: design, implementation and management. 11a.ed. São Paulo: Cengage do Brasil, 2014.'
	, 'ELMASRI,0 R. E.; NAVATHE, S. B. Sistemas de Banco de Dados. 6. Ed. São Paulo: Pearson, 2011.'
	, 75
	, 25
	, 1
),('Linguegem LPII'
	, 'FECHADA'
	, 'basico em LPII'
	, 80
	, 'programação em python '
	, 'Conhecimento de lógica e algoritmos'
	, 'comandos if e else, for e while, lista e função'
	, 'Linguagem LP2'
	, 'CORONEL, C.sign, implementat; MORRIS, S. Database Systems: de ion and management. 11a.ed. São Paulo: Cengage do Brasil, 2014.'
	, 'ELMASRI,0 R. E.nco de ; NAVATHE, S. B. Sistemas de Ba Dados. 6. Ed. São Paulo: Pearson, 2011.'
	, 80
	, 20
	, 2
),('Devops'
	, 'ABERTA'
	, 'scrum e docker'
	, 80
	, 'Teste de programação e junção de containers no docker'
	, 'Conhecimento básico em proramação'
	, 'if else e outros paranaue'
	, 'Desenvolvilmento e operação'
	, 'CORONEL, C.sign, implementat; MORRIS, S. Database Systems: de ion and management. 11a.ed. São Paulo: Cengage do Brasil, 2014.'
	, 'ELMASRI,0 R. E.nco de ; NAVATHE, S. B. Sistemas de Ba Dados. 6. Ed. São Paulo: Pearson, 2011.'
	, 90
	, 50
	, 3
),('TecWeb'
	, 'ABERTA'
	, 'html css e js'
	, 80
	, 'Desenvolvimento em java script com designers em html e css'
	, 'Conhecimento básico em lógica de programação.'
	, 'funções e comandos básicos em java script criação de paginas usando html e css'
	, 'Desenvolvilmento de sites'
	, 'CORONEL, C.sign, implementat; MORRIS, S. Database Systems: de ion and management. 11a.ed. São Paulo: Cengage do Brasil, 2014.'
	, 'ELMASRI,0 R. E.nco de ; NAVATHE, S. B. Sistemas de Ba Dados. 6. Ed. São Paulo: Pearson, 2011.'
	, 70
	, 15
	, 4
),('Engenharia de software'
	, 'ABERTA'
	, 'scrum'
	, 80
	, 'Praticar e aperfeiçoar  metodologias ageis'
	, 'Conhecimento básico de gestão de projetos'
	, 'Acrescentar scrum em um projeto real'
	, 'Agilizar o processo de desenvolvimento de software'
	, 'CORONEL, C.sign, implementat; MORRIS, S. Database Systems: de ion and management. 11a.ed. São Paulo: Cengage do Brasil, 2014.'
	, 'ELMASRI,0 R. E.nco de ; NAVATHE, S. B. Sistemas de Ba Dados. 6. Ed. São Paulo: Pearson, 2011.'
	, 60
	, 30
	, 5

INSERT INTO Curso (Nome) 
VALUES ('Sistemas de Informações') ,
	  ('Analise e desenvolvimento de sistemas'),
	  ('Redes de computação'),
	  ('Desenvolvimento de jogos'),
	  ('Engenharia da computação')

INSERT INTO DisciplinaOfertada (IdCoordenador,IdDisciplina,IdCurso,ANO,Semestre,Turma,IdProfessor,Metodologia,Recursos,CriterioAvaliacao,PlanoDeAulas)
VALUES ( 
	1
	, 1 
	, 1
	, 2018
	, 1
	, 'B'
	, 1
	, 'Teoria utilizando Aulas expositivas de projetor e lousa eletrônica.'
	, 'Tecnologia'
	,'São aplicadas 10 atividades, uma prova semestral e uma prova substituta caso o aluno precise. '
	, 'Apresentação da turma, metodo ações sobre o ambiente, conteúdo programático. Explicar uma VM, acesso ao SQL'
),(2,
   2,
   2,
   2017,
   2,
   'C',
   2,
   'Teoria utilizando Aulas expositivas de projetor e lousa eletrônica.',
   'Tecnologia',
   'São aplicadas 10 atividades, uma prova semestral e uma prova substituta caso o aluno precise.',
   'Apresentação da turma, metodo ações sobre o ambiente, conteúdo programático. Programar em python'
),(3,
   3,
   3,
   2016,
   1,
   'D',
   3,
   'Teoria utilizando Aulas expositivas de projetor e lousa eletrônica.',
   'Tecnologia',
   'São aplicadas 10 atividades, uma prova semestral e uma prova substituta caso o aluno precise.',
   'Apresentação da turma, metodo ações sobre o ambiente, conteúdo programático. Desenvolver testes de programação e subir container com docker'
),(4,
   4,
   4,
   2015,
   1,
   'D',
   4,
   'Teoria utilizando Aulas expositivas de projetor e lousa eletrônica.',
   'Tecnologia',
   'São aplicadas 10 atividades, uma prova semestral e uma prova substituta caso o aluno precise.',
   'Apresentação da turma, metodo ações sobre o ambiente, conteúdo programático. Desenvolver telas com JavaScript, html e css'
),(5,
   5,
   5,
   2014,
   1,
   'E',
   5,
   'Teoria utilizando Aulas expositivas de projetor e lousa eletrônica.',
   'Tecnologia',
   'São aplicadas 10 atividades, uma prova semestral e uma prova substituta caso o aluno precise.',
   'Apresentação da turma, metodo ações sobre o ambiente, conteúdo programático. Implementar metodologias ageis em projetos'

   

INSERT INTO SolicitacaoMatricula (IdAluno,IdDisciplinaOfertada,IdCoordenador, status)
VALUES (1  ,1  ,1   ,'Aprovada'),
       (2  ,2  ,2   ,'Rejeitada'),
	   (3  ,3  ,3   ,'Cancelada'),
	   (4  ,4  ,4   ,'Aprovada'),
	   (5  ,5  ,5   ,'Aprovada')

INSERT INTO Atividade (Titulo,Descricao,Conteudo,Tipo,Extras,IdProfessor)
VALUES ('JOINS'         ,'junções de tableas'                 ,'banco de dados lms'    ,'Teste'  ,'faz as juncões necessarias para o select'     ,1),
	   ('CALCULADORA'   ,'fazer uma calculadora com python'   ,'python'                ,'ac'     ,'realizar as 4 operações'                      ,2),	   
	   ('DOCKER'        ,'criação de container'               ,'servidor do lms'       ,'Teste'  ,'subir o servidor de lms através de containers',3),
	   ('HTML'          ,'fazer um esboço de página em html'  ,'front lms'             ,'Teste'  ,'apresentar o pag de cadastro '                ,4),
	   ('SCRUM'         ,'agilizar o trabalho'                ,'desenvolvimento de lms','Teste'  ,'utilizar scrum no desenvolvimento de lms'     ,1)
 
INSERT INTO AtividadeVinculada (IdAtividade,IdProfessor,IdDisciplinaOfertada,DtInicioRespostas,DtFimRespostas,Rotulo,Status)	
VALUES (1  ,1  ,1   ,'2018-11-01'   ,'2018-11-06'   ,'Aberta'           ,'Aberta, Fechada'),
       (2  ,2  ,2   ,'2018-11-02'   ,'2018-11-07'   ,'Disponibilizada'  ,'Aberta, Prorrogada'),
	   (3  ,3  ,3   ,'2018-11-03'   ,'2018-11-08'   ,'Aberta'           ,'Aberta, Fechada'),
	   (4  ,4  ,4   ,'2018-11-04'   ,'2018-11-09'   ,'Aberta'           ,'Aberta, Fechada'),
	   (5  ,5  ,5   ,'2018-11-05'   ,'2018-11-10'   ,'Aberta'           ,'aberta, Encerrada')

INSERT INTO Entrega (IdAluno,IdAtividadeVinculada,Titulo,Resposta,Status,IdProfessor,Nota,DtAvaliacao,Obs)
VALUES (1,1,'JOINS'       ,'correta'   ,'entregue'  ,1  ,5   ,'2018-11-06'   ,'excelente'),
	   (2,2,'CALCULADORA' ,'correta'   ,'entregue'  ,2  ,5   ,'2018-11-07'   ,'excelente') ,
	   (3,3,'DOCKER '     ,'correta'   ,'entregue'  ,3  ,5   ,'2018-11-08'   ,'excelente') ,
	   (4,4,'HTML '       ,'correta'   ,'entregue'  ,4  ,5   ,'2018-11-09'   ,'excelente') ,
	   (5,5,'SCRUM'       ,'correta'   ,'entregue'  ,5  ,5   ,'2018-11-10'   ,'excelente') 

INSERT INTO Mensagem (IdAluno,DtEnvio ,IdProfessor,Assunto,Referencia,Conteudo,Status,Resposta)
VALUES (1  ,'2018-11-01'  ,1  ,'ac'    ,'Professores da faculdadeimpacta'   ,'sql'                  ,'Enviado'      ,'certo'),
	   (2  ,'2018-11-02'  ,2  ,'ac '   ,'Professores da faculdadeimpacta'   ,'lp2'                  ,'Lido'         ,'certo'),
	   (3  ,'2018-11-03'  ,3  ,'ac '   ,'Professores da faculdadeimpacta'   ,'devops'               ,'Respondido'   ,'certo'),
	   (4  ,'2018-11-04'  ,4  ,'ac '   ,'Professores da faculdadeimpacta'   ,'tecweb'               ,'Enviado'      ,'certo'),
	   (5  ,'2018-11-05'  ,5  ,'ac '   ,'Professores da faculdadeimpacta'   ,'engenharia software'  ,'Enviado'      ,'certo')




