
INSERT INTO Usuario (Login,Senha) 
VALUES ('daniel',03111986)

INSERT INTO Coordenador (Id_usuario,Nome,Email,Celular)
VALUES (1,'Pedro','Pedro@impacta.br','(11)98764-4200')

INSERT INTO Aluno (Id_usuario,Nome,Email,Celular,RA)	
VALUES (1,'Tiago','tiagp@hotmail.com','(11)99988-7700',1800111)

INSERT INTO Professor (Id_usuario,Email,Celular,Apelido)
VALUES (1,'cabelolp@faculdadeimpacta.com.br','(11)96644-0022','lagreca')

INSERT INTO Disciplina (Nome,Status,PlanoDeEnsino,CargaHoraria,Competencias,Habilidades
	,Ementa,ConteudoProgramatico,BibliografiaBasica,BibliografiaComplementar,PercentualPratico,PercentualTeorico,IdCoordenador)
VALUES('Linguegem SQL'
	,'ABERTA'
	,'basico em sql'
	,80
	,'Arquitetar um Bancos de dados'
	,'Conhecimento das regras de mapeamento dos modelos lógico/conceitual para o físico.'
	,'criação, inserção e consultas em banco de dados'
	,'Linguagem SQL'
	,'CORONEL, C.; MORRIS, S. Database Systems: design, implementation and management. 11a.ed. São Paulo: Cengage do Brasil, 2014.'
	,'ELMASRI,0 R. E.; NAVATHE, S. B. Sistemas de Banco de Dados. 6. Ed. São Paulo: Pearson, 2011.'
	,75
	,25
	,1
)

INSERT INTO Curso (Nome) 
VALUES ('Sistemas de Informações') 

INSERT INTO DisciplinaOfertada 
	(IdCoordenador
	,IdDisciplina
	,IdCurso,ANO,Semestre,Turma,IdProfessor,Metodologia,Recursos,CriterioAvaliacao,PlanoDeAulas)
VALUES (
	1
	, 1 
	, 1
	, 2018
	, 1
	, 'D'
	, 1
	, 'Aulas expositivas de teoria utilizando projetor e lousa eletrônica.'
	, 'Não sei o que é'
	,'São aplicadas as ACS para realização e dependendo da nota tem uma prova para recupéração de notas'
	, 'Apresentação da turma, metodologia, conteúdo programático. Explicações sobre o ambiente, Como abrir uma VM, acesso ao SQL'
)

INSERT INTO SolicitacaoMatricula (IdAluno,IdDisciplinaOfertada,IdCoordenador, status)
VALUES (1,5,1,'Aprovada')

INSERT INTO Atividade (Titulo,Descricao,Conteudo,Tipo,Extras,IdProfessor)
VALUES ('JOINS','junções de tableas','seleçoes de tabelas','Teste','faz as juncões necessarias para o select',1)

SELECT * FROM lms.dbo.AtividadeVinculada

INSERT INTO AtividadeVinculada (IdAtividade,IdProfessor,IdDisciplinaOfertada,DtInicioRespostas,DtFimRespostas,Rotulo,Status)	
VALUES (3,1,5,'2018-11-05','2018-11-09','Aberta','aberta, fechada')

INSERT INTO Entrega (IdAluno,IdAtividadeVinculada,Titulo,Resposta,Status,IdProfessor,Nota,DtAvaliacao,Obs)
VALUES (1,8,'alguma coisa','correta','entregue',1,5,'2018-11-07','não sei se esta certo') 

INSERT INTO Mensagem (IdAluno,DtEnvio ,IdProfessor,Assunto,Referencia,Conteudo,Status,Resposta)
VALUES (1,'2018-11-07',1,'a criterio','Professores da faculdadeimpacta','aleatorio','enviado','lido')
 
