INSERT INTO Usuario (Login,Senha) 
VALUES ('daniel',03111986)

INSERT INTO Coordenador (Id_usuario,Nome,Email,Celular)
VALUES (1,'Pedro','Pedro@impacta.br','(11)98764-4200')

INSERT INTO Aluno (Id_usuario,Nome,Email,Celular,RA)	
VALUES (1,'Joao'    ,'tasjdkagsdjhaa@akhsl.com'	,'(11)88878-7447',15558521)
	,(1,'daniel'    ,'tabsdhahsl.com'			,'(11)88988-4450',18516112)
	,(1,'dangdiel'  ,'tabjgakshdgasdhahsl.com'	,'(11)66954-7550',16855151)
	,(1,'asdadel'   ,'tabsdhahssadal.com'		,'(11)66988-7550',51480558)
	,(1,'daniel'    ,'tabsdhahsl.aacom'			,'(11)48988-7550',15126261)
	,(1,'adadfiel'  ,'tabsdhahssl.com'			,'(11)88584-7550',16364861)
	,(1,'daasdadl'  ,'tabsdhahslaa.com'			,'(11)81288-7550',15118691)
	,(1,'dajgafgdl' ,'tabsdhahsal.com'			,'(11)88988-7550',51158471)
	,(1,'daaytrtyu' ,'tabsdhadhsl.com'			,'(11)88978-7550',18519911)
	,(1,'dadsasda'  ,'tabsdhaadsashsdala.com'	,'(11)08988-7550',18562611)
	,(1,'dadadfel'  ,'tabsdhahsld.com'			,'(11)85478-7550',15116261)
	
INSERT INTO Professor (Id_usuario,Email,Celular,Apelido)
VALUES (1,'cabelo@faculdadeimpacta.com.br','(11)96644-0022','lagreca')
	,  (1 ,'CalcaApertada@faculdadeimpacta.com.br','(11)96558-5422','Apertadinho')
	,  (1 ,'depressao@faculdadeimpacta.com.br','(11)95458-5422','html nao é linguagem de programacao')
	
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
	, 40
	, 'programação em "html" e desenvolvimento de banco em CSS'
	, 'Conhecimento das regras de mapeamento dos modelos lógico/conceitual para o físico.'
	, 'if else e outros paranaue'
	, 'Linguagem LP2'
	, 'CORONEL, C.sign, implementat; MORRIS, S. Database Systems: de ion and management. 11a.ed. São Paulo: Cengage do Brasil, 2014.'
	, 'ELMASRI,0 R. E.nco de ; NAVATHE, S. B. Sistemas de Ba Dados. 6. Ed. São Paulo: Pearson, 2011.'
	, 80
	, 20
	, 1
)  

INSERT INTO Curso (Nome) 
VALUES ('Sistemas de Informações') 
	, ('Analise e desenvolvimento de sistemas')
	, ('Redes de compiuters')

INSERT INTO DisciplinaOfertada (IdCoordenador,IdDisciplina,IdCurso,ANO,Semestre,Turma,IdProfessor,Metodologia,Recursos,CriterioAvaliacao,PlanoDeAulas)
VALUES ( 
	1
	, 1 
	, 1
	, 2018
	, 1
	, 'B'
	, 1
	, ' teoria utilizando Aulas expositivas de projetor e lousa eletrônica.'
	, ' que é Não sei o'
	,'São aplicadas as tem uma prova para recupéração de notas ACS para realização e dependendo da nota '
	, 'Apresentação da turma, metod ações sobre o ambiente, Como abr ologia, conteúdo programático. Explicir uma VM, acesso ao SQL'
)

INSERT INTO SolicitacaoMatricula (IdAluno,IdDisciplinaOfertada,IdCoordenador, status)
VALUES (1,5,1,'Aprovada')

INSERT INTO Atividade (Titulo,Descricao,Conteudo,Tipo,Extras,IdProfessor)
VALUES ('JOINS','junções de tableas','seleçoes de tabelas','Teste','faz as juncões necessarias para o select',1)

INSERT INTO AtividadeVinculada (IdAtividade,IdProfessor,IdDisciplinaOfertada,DtInicioRespostas,DtFimRespostas,Rotulo,Status)	
VALUES (3,1,5,'2018-11-05','2018-11-09','Aberta','aberta, fechada')

INSERT INTO Entrega (IdAluno,IdAtividadeVinculada,Titulo,Resposta,Status,IdProfessor,Nota,DtAvaliacao,Obs)
VALUES (1,8,'alguma coisa','correta','entregue',1,5,'2018-11-07','não sei se esta certo') 

INSERT INTO Mensagem (IdAluno,DtEnvio ,IdProfessor,Assunto,Referencia,Conteudo,Status,Resposta)
VALUES (1,'2018-11-07',1,'a criterio','Professores da faculdadeimpacta','aleatorio','enviado','lido')


SELECT
	COUNT(AL.Nome)
FROM lms.dbo.SolicitacaoMatricula AS SM
INNER JOIN lms.dbo.DisciplinaOfertada AS DO ON  SM.IdDisciplinaOfertada = DO.Id
INNER JOIN lms.dbo.Aluno AS AL ON SM.IdAluno = AL.Id
GROUP BY SM.IdDisciplinaOfertada 

