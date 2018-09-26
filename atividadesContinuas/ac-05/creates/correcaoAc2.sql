CREATE DATABASE AC5
USE AC5

CREATE TABLE USUARIO (
	codigo int NOT NULL,
	nome varchar(120) NOT NULL,
	apelido varchar(50) NOT NULL,
	email varchar(100) NOT NULL,
	senha varchar(255) NOT NULL,
	status_usuario varchar(100),
	CONSTRAINT pkUsuario PRIMARY KEY (codigo),
	CONSTRAINT uqUsuarioEmail UNIQUE (email),
	CONSTRAINT uqUsuarioApelido UNIQUE (apelido),
	CONSTRAINT ckUsuarioCodigo CHECK (codigo > 0)
);

CREATE TABLE POSTAGEM (
	codigo BIGINT NOT NULL,
	texto VARCHAR(1000) NOT NULL,
	eh_sensivel BIT NOT NULL,
	cod_usuario INT NOT NULL,
	data DATETIME,
	PRIMARY KEY (codigo),
	FOREIGN KEY (cod_usuario) 
		REFERENCES USUARIO(codigo) ON DELETE CASCADE
);

CREATE TABLE SOLICITA (
	cod_solicitante INT NOT NULL,
	cod_solicitado INT NOT NULL,
	data_solicitacao DATETIME NOT NULL,
	texto VARCHAR(500),
	CONSTRAINT pkSolicita PRIMARY KEY
	 (cod_solicitante, cod_solicitado),
	CONSTRAINT fkSolicita1 FOREIGN KEY
	  (cod_solicitante) REFERENCES USUARIO(codigo),
	CONSTRAINT fkSolicita2 FOREIGN KEY
		(cod_solicitado) REFERENCES USUARIO(codigo)
);

CREATE TABLE AMIZADE (
	cod_usu1 INT NOT NULL,
	cod_usu2 INT NOT NULL,
	data DATETIME NOT NULL,
	CONSTRAINT pkAmizade PRIMARY KEY
	 (cod_usu1, cod_usu2),
	CONSTRAINT fkAmizade1 FOREIGN KEY
	  (cod_usu1) REFERENCES USUARIO(codigo),
	CONSTRAINT fkAmizade2 FOREIGN KEY
		(cod_usu2) REFERENCES USUARIO(codigo)
);

CREATE TABLE CURTIDA(
	cod_usu INT NOT NULL,
	cod_post BIGINT NOT NULL,
	data DATETIME NOT NULL,
	CONSTRAINT pkCurtida PRIMARY KEY (cod_usu, cod_post),
	CONSTRAINT fkCurtidaUsu FOREIGN KEY
	 (cod_usu) REFERENCES USUARIO(codigo),
	 CONSTRAINT fkCurtidaPost FOREIGN KEY
	  (cod_post) REFERENCES POSTAGEM(codigo)
);

CREATE TABLE COMENTARIO (
	cod_usu INT NOT NULL,
	cod_post BIGINT NOT NULL,
	texto VARCHAR(1000) NOT NULL,
	data DATETIME NOT NULL,
	CONSTRAINT pkComentario PRIMARY KEY (cod_usu, cod_post),
	CONSTRAINT fkComentarioUsu FOREIGN KEY
	 (cod_usu) REFERENCES USUARIO(codigo),
	 CONSTRAINT fkComentarioPost FOREIGN KEY
	  (cod_post) REFERENCES POSTAGEM(codigo)
);





