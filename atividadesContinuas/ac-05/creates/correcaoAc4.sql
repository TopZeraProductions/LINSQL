/*
Envie um script .sql com as seguintes operações DDL, sem usar DROP TABLE ou CREATE TABLE:
1. Na tabela SOLICITA, insira uma coluna ID do tipo INT, transforme-a em PRIMARY KEY e por fim insira uma restrição UNIQUE na chave primária anterior.

2. Retire a restrição de UNIQUE na tabela USUARIO da coluna email e permita valores nulos nessa coluna.

3. Altere o tipo de dado da coluna texto da tabela comentario para TEXT.

4. Garanta que apelido de usuário tenha pelo menos 5 caracteres.
*/


BEGIN TRANSACTION
	/* 1 */
	ALTER TABLE SOLICITA ADD ID INT NOT NULL;
	ALTER TABLE SOLICITA DROP pkSolicita;
	ALTER TABLE SOLICITA ADD CONSTRAINT pkSolicita PRIMARY KEY (ID);
	ALTER TABLE SOLICITA ADD CONSTRAINT uqSolicitaUsuarios UNIQUE (cod_solicitante, cod_solicitado);
	
	/* 2 */
	ALTER TABLE USUARIO DROP CONSTRAINT uqUsuarioEmail;
	ALTER TABLE USUARIO ALTER COLUMN email VARCHAR(100) NULL;
	
	/* 3 */
	ALTER TABLE COMENTARIO ALTER COLUMN texto TEXT NOT NULL;
	
	/* 4 */
	ALTER TABLE USUARIO ADD CONSTRAINT ckUsuarioApelido CHECK(len(apelido) >= 5)
	
COMMIT
