CREATE DATABASE lms
USE lms

CREATE TABLE Usuario (
	ID INT NOT NULL IDENTITY (1,1),
	Login VARCHAR(50) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	DtExpiracao DATE NOT NULL CONSTRAINT dfUsuarioDtExpiracao DEFAULT '1900-01-01',
		CONSTRAINT pkUsuario PRIMARY KEY (ID),
		CONSTRAINT uqUsuarioLogin UNIQUE (Login)
);


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
CREATE TABLE Curso (
	ID INT NOT NULL IDENTITY (1,1),
	Nome VARCHAR(100) NOT NULL,
	CONSTRAINT pkCurso PRIMARY KEY (ID),
	CONSTRAINT uqCursoNome UNIQUE (Nome)
);
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
