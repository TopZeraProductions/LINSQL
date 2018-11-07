CREATE TABLE Usuario (
		ID INT NOT NULL IDENTITY (1,1),
		Login VARCHAR(50) NOT NULL,
		Senha VARCHAR(100) NOT NULL,
		DtExpiracao DATE NOT NULL CONSTRAINT dfUsuarioDtExpiracao DEFAULT '1900-01-01',
		CONSTRAINT pkUsuario PRIMARY KEY (ID),
		CONSTRAINT uqUsuarioLogin UNIQUE (Login)
	);

	INSERT INTO Usuario (Login,Senha,DtExpiracao) 
	
	VALUES ('daniel',03111986,)

	CREATE TABLE Coordenador (
		ID INT NOT NULL IDENTITY (1,1),
		Id_usuario INT NOT NULL,
		Nome VARCHAR(120) NOT NULL,
		Email VARCHAR(100) NOT NULL,
		Celular CHAR(14) NOT NULL, --(11)91234-5678
		CONSTRAINT pkCoordenador PRIMARY KEY (ID),
		CONSTRAINT fkCoordenadorUsuario FOREIGN KEY (Id_usuario) REFERENCES Usuario(ID),
		CONSTRAINT uqCoordenadorEmail UNIQUE (Email),
		CONSTRAINT uqCoordenadorCelular UNIQUE (Celular)
	);
	
	INSERT INTO Coordenador (Id_usuario,Nome,Email,Celular)
	
	VALUES (1,'Pedro','Pedro@impacta.br','(11)98764-4200')

	CREATE TABLE Aluno (
		ID INT NOT NULL IDENTITY (1,1),
		Id_usuario INT NOT NULL,
		Nome VARCHAR(120) NOT NULL,
		Email VARCHAR(100) NOT NULL,
		Celular CHAR(14) NOT NULL, --(11)91234-5678
		RA INT NOT NULL,
		Foto VARCHAR(255) NULL,
		CONSTRAINT pkAluno PRIMARY KEY (ID),
		CONSTRAINT fkAlunoUsuario FOREIGN KEY (Id_usuario) REFERENCES Usuario(ID),
		CONSTRAINT uqAlunoEmail UNIQUE (Email),
		CONSTRAINT uqAlunoCelular UNIQUE (Celular)
	);
	INSERT INTO Aluno (Id_usuario,Nome,Email,Celular,RA,Foto)	
	VALUES (1,'Tiago','tiagp@hotmail.com','(11)99988-7700',1800111,)
	
	
	CREATE TABLE Professor (
		ID INT NOT NULL IDENTITY (1,1),
		Id_usuario INT NOT NULL,
		Email VARCHAR(100) NOT NULL,
		Celular CHAR(14) NOT NULL, --(11)91234-5678
		Apelido VARCHAR(120) NOT NULL,
		CONSTRAINT pkProfessor PRIMARY KEY (ID),
		CONSTRAINT fkProfessorUsuario FOREIGN KEY (Id_usuario) REFERENCES Usuario(Id),
		CONSTRAINT uqProfessorEmail UNIQUE (Email),
		CONSTRAINT uqProfessorCelular UNIQUE (Celular)
	);
	INSERT INTO Professor (Id_usuario,Email,Celular,Apelido)
	VALUES (1,'cabelolp@faculdadeimpacta.com.br','(11)96644-0022','lagreca')

	CREATE TABLE Disciplina (
		ID INT NOT NULL IDENTITY (1,1),
		Nome VARCHAR(100) NOT NULL,
		Data DATETIME NOT NULL CONSTRAINT dfDisciplinaData DEFAULT getdate(),
		Status VARCHAR(7) NOT NULL CONSTRAINT dfDisciplinaStatus DEFAULT 'Aberta', -- 
		PlanoDeEnsino TEXT NOT NULL,
		CargaHoraria TINYINT NOT NULL, -- 40 ou 80 <= 255
		Competencias TEXT NOT NULL,
		Habilidades TEXT NOT NULL,
		Ementa TEXT NOT NULL,
		ConteudoProgramatico TEXT NOT NULL,
		BibliografiaBasica TEXT NOT NULL,
		BibliografiaComplementar TEXT NOT NULL,
		PercentualPratico TINYINT NOT NULL, -- 0 a 100 <= 255
		PercentualTeorico TINYINT NOT NULL, -- 0 a 100 <= 255
		IdCoordenador INT NOT NULL,
		CONSTRAINT pkDisciplina PRIMARY KEY (ID),
		CONSTRAINT uqDisciplinaNome UNIQUE (Nome),
		CONSTRAINT ckDisciplinaStatus CHECK (Status = 'Aberta' OR Status = 'Fechada'),
		CONSTRAINT ckDisicplinaCargaHoraria CHECK (CargaHoraria = 40 OR CargaHoraria = 80),
		CONSTRAINT ckDisciplinaPercentualPratico CHECK (PercentualPratico BETWEEN 0 AND 100),
		CONSTRAINT ckDisciplinaPercentualTeorico CHECK (PercentualTeorico BETWEEN 0 AND 100),
		CONSTRAINT ckDisciplinaSomaPercentuais CHECK (PercentualPratico + PercentualTeorico = 100), --Opcional, mas desejável!
		CONSTRAINT fkDisciplinaCoordenador FOREIGN KEY (IdCoordenador) REFERENCES Coordenador(ID)
	);
	INSERT INTO Disciplina (Nome,Status,PlanoDeEnsino,CargaHoraria,Competencias,Habilidades,Ementa,ConteudoProgramatico,
	BibliografiaBasica,BibliografiaComplementar,PercentualPratico,PercentualTeorico,IdCoordenador)
	
	VALUES ('Linguegem SQL','ABERTA','basico em sql',80,'Arquitetar um Bancos de dados','Conhecimento das regras de mapeamento dos modelos lógico/conceitual para o físico'
		'criação, inserção e consultas em banco de dados','Linguagem SQL','CORONEL, C.; MORRIS, S. Database Systems: design, implementation and management. 11a.ed. São Paulo: Cengage do Brasil, 2014.
		','ELMASRI, R. E.; NAVATHE, S. B. Sistemas de Banco de Dados. 6. Ed. São Paulo: Pearson, 2011.',75,25,1)

	CREATE TABLE Curso (
		ID INT NOT NULL IDENTITY (1,1),
		Nome VARCHAR(100) NOT NULL,
		CONSTRAINT pkCurso PRIMARY KEY (ID),
		CONSTRAINT uqCursoNome UNIQUE (Nome)
	);
	INSERT INTO Curso (Nome) VALUES ('Sistemas de Informações') 
	
	CREATE TABLE DisciplinaOfertada (
		ID INT NOT NULL IDENTITY (1,1),
		IdCoordenador INT NOT NULL,
		DtInicioMatricula DATE NULL,
		DtFimMatricula DATE NULL,
		IdDisciplina INT NOT NULL,
		IdCurso INT NOT NULL,
		ANO SMALLINT NOT NULL,
		Semestre TINYINT NOT NULL,
		Turma CHAR(1) NOT NULL,
		IdProfessor INT NULL,
		Metodologia TEXT NULL,
		Recursos TEXT NULL,
		CriterioAvaliacao TEXT NULL,
		PlanoDeAulas TEXT NULL,
		CONSTRAINT pkDisciplinaOfertada PRIMARY KEY (ID),
		CONSTRAINT fkDisciplinaOfertadaCoordenador FOREIGN KEY (IdCoordenador) REFERENCES Coordenador(ID),
		CONSTRAINT fkDisciplinaOfertadaDisciplina FOREIGN KEY (IdDisciplina) REFERENCES Disciplina(ID),
		CONSTRAINT fkDisciplinaOfertadaCurso FOREIGN KEY (IdCurso) REFERENCES  Curso(ID),
		CONSTRAINT fkDisciplinaOfertadaProfessor FOREIGN KEY (IdProfessor) REFERENCES  Professor(ID),
		CONSTRAINT uqDisciplinaOfertada UNIQUE (IdDisciplina, IdCurso, Ano, Semestre, Turma),
		CONSTRAINT ckDisciplinaOfertadaAno CHECK (Ano BETWEEN 1900 AND 2100),
		CONSTRAINT ckDisciplinaOfertadaSemestre CHECK (Semestre = 1 OR Semestre = 2),
		CONSTRAINT ckDisciplinaOfertadaTurma CHECK (Turma LIKE '[A-Z]')
	);
		INSERT INTO DisciplinaOfertada (IdCoordenador,IdDisciplina,IdCurso,ANO,Semestre,Turma,IdProfessor,Metodologia,Recursos,CriterioAvaliacao,PlanoDeAulas)
		
		VALUES (1,1,1,1,4,1,'SI-2D',1,'Aulas expositivas de teoria utilizando projetor e lousa eletrônica.',
		'Não sei o que é','São aplicadas as ACS para realização e dependendo da nota tem uma prova para recupéração de notas',
		'Apresentação da turma, metodologia, conteúdo programático.
		Explicações sobre o ambiente, Como abrir uma VM, acesso ao SQL
		')

		
	CREATE TABLE SolicitacaoMatricula (
		ID INT NOT NULL IDENTITY (1,1),
		IdAluno INT NOT NULL,
		IdDisciplinaOfertada INT NOT NULL,
		DtSolicitacao DATETIME NOT NULL CONSTRAINT dfSolicitacaoMatriculaDtSolicitacao DEFAULT getdate(),
		IdCoordenador INT NULL,
		Status VARCHAR(10) NULL CONSTRAINT dfSolicitacaoMatriculaStatus DEFAULT 'Solicitada',
		CONSTRAINT pkSolicitacaoMatricula PRIMARY KEY (ID),
		CONSTRAINT fkSolicitacaoMatriculaAluno FOREIGN KEY (IdAluno) REFERENCES Aluno(ID),
		CONSTRAINT fkSolicitacaoMatriculaDisciplinaOfertada FOREIGN KEY (IdDisciplinaOfertada) REFERENCES DisciplinaOfertada(ID),
		CONSTRAINT fkSolicitacaoMatriculaCoodernador FOREIGN KEY (IdCoordenador) REFERENCES Coordenador(ID),
		CONSTRAINT uqSolicitacaoMatricula UNIQUE (IdAluno, IdDisciplinaOfertada),
		CONSTRAINT ckSolicitacaoMatriculaStatus CHECK (Status IN ('Solicitada','Aprovada','Rejeitada','Cancelada')),
		CONSTRAINT ckSolicitacaoMatriculaIdCoordenador CHECK (IdCoordenador IS NULL OR IdCoordenador IS NOT NULL AND Status IN ('Aprovada','Rejeitada','Cancelada'))
	);
	
		INSERT INTO SolicitacaoMatricula (IdAluno,IdDisciplinaOfertada,IdCoordenador,)
		
		VALUES (1,1,1)
		
	CREATE TABLE Atividade (
		ID INT NOT NULL IDENTITY (1,1),
		Titulo VARCHAR(255) NOT NULL,
		Descricao TEXT NULL,
		Conteudo TEXT NOT NULL,
		Tipo VARCHAR(15) NOT NULL,
		Extras VARCHAR(255) NULL,
		IdProfessor INT NOT NULL,
		CONSTRAINT pkAtividade PRIMARY KEY (ID),
		CONSTRAINT fkAtividadeProfessor FOREIGN KEY (IdProfessor) REFERENCES Professor(ID),
		CONSTRAINT uqAtividadeTitulo UNIQUE(Titulo),
		CONSTRAINT ckAtividadeTipo CHECK (Tipo IN ('Resposta Aberta', 'Teste'))
	);
	
	INSERT INTO Atividade (Titulo,Descricao,Conteudo,Tipo,Extras,IdProfessor)
	
	VALUES ('JOINS','junções de tableas','seleçoes de tabelas','consultas','faz as juncões necessarias para o select',1)

	CREATE TABLE AtividadeVinculada (
		ID INT NOT NULL IDENTITY (1,1),
		IdAtividade INT NOT NULL,
		IdProfessor INT NOT NULL,
		IdDisciplinaOfertada INT NOT NULL,
		Rotulo VARCHAR(50) NOT NULL,
		Status VARCHAR(15) NOT NULL,
		DtInicioRespostas DATETIME NOT NULL,
		DtFimRespostas DATETIME NOT NULL,
		CONSTRAINT pkAtividadeVinculada PRIMARY KEY (ID),
		CONSTRAINT fkAtividadeVinculadaAtividade FOREIGN KEY (IdAtividade) REFERENCES Atividade(ID),
		CONSTRAINT fkAtividadeVinculadaProfessor FOREIGN KEY (IdProfessor) REFERENCES Professor(ID),
		CONSTRAINT fkAtividadeVinculadaDisciplinaOfertada FOREIGN KEY (IdDisciplinaOfertada) REFERENCES DisciplinaOfertada(ID),
		CONSTRAINT uqAtividadeVinculada UNIQUE (Rotulo, IdAtividade, IdDisciplinaOfertada),
		CONSTRAINT ckAtividadeVinculadaRotulo CHECK (Rotulo IN ('Disponibilizada', 'Aberta', 'Fechada', 'Encerrada', 'Prorrogada'))
	);
	
	
	INSERT INTO AtividadeVinculada (IdAtividade,IdProfessor,IdDisciplinaOfertada,Rotulo,Status)
	
	VALUES (1,1,1,'Não sei o que seria ROTULO ?','aberta, fechada')

	CREATE TABLE Entrega (
		ID INT NOT NULL IDENTITY (1,1),
		IdAluno INT NOT NULL,
		IdAtividadeVinculada INT NOT NULL,
		Titulo VARCHAR(100) NOT NULL,
		Resposta TEXT NOT NULL,
		DtEntrega DATETIME NOT NULL DEFAULT getdate(),
		Status VARCHAR(9) NOT NULL DEFAULT 'Entregue',
		IdProfessor INT,
		Nota DECIMAL(5,2),
		DtAvaliacao DATE,
		Obs TEXT,
		CONSTRAINT pkEntrega PRIMARY KEY (ID),
		CONSTRAINT uqAlunoEntrega UNIQUE (IdAluno, IdAtividadeVinculada),
		CONSTRAINT ckEntregaStatus CHECK (Status IN ('Entregue', 'Concluido')),
		CONSTRAINT ckEntregaAvaliacao CHECK ((IdProfessor IS NULL AND Nota IS NULL AND Nota IS NULL) 
									OR (IdProfessor IS NOT NULL AND Nota IS NOT NULL AND Nota IS NOT NULL)  ),
		CONSTRAINT ckEntregaNota CHECK (Nota BETWEEN 0.00 AND 10.00)
	);
	
		INSERT INTO Entrega (IdAluno,IdAtividadeVinculada,Titulo,Resposta,Status,IdProfessor,Nota,DtAvaliacao,Obs)
		
		VALUES (1,1,'alguma coisa','correta','engtregue',1,5,'2018-11-07','não sei se esta certo') 

	CREATE TABLE Mensagem (
		ID INT NOT NULL IDENTITY (1,1),
		IdAluno INT NOT NULL,
		IdProfessor INT NOT NULL,
		Assunto VARCHAR(500) NOT NULL,
		Referencia TEXT NOT NULL,
		Conteudo TEXT NOT NULL,
		Status VARCHAR(10) NOT NULL,
		DtEnvio DATETIME NOT NULL,
		DtResposta DATETIME,
		Resposta TEXT,
		CONSTRAINT pkMensagem PRIMARY KEY (ID),
		CONSTRAINT ckMensgaemStatus CHECK (Status IN ('Enviado', 'Lido', 'Respondido'))
	);
	
	INSERT INTO Mensagem (IdAluno,IdProfessor,Assunto,Referencia,Conteudo,Status,Resposta)
	
	VALUES (1,1,'a criterio','Professores da faculdadeimpacta','aleatorio','enviado','lido')