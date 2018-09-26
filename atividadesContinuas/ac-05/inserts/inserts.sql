/*
    Daniel rodrigues ra:1800479
    Joao vitor paulino ra: 1801021
    Tiago beneteli ra: 1800804
*/

INSERT INTO USUARIO (codigo, nome, apelido, email, senha, status_usuario)
VALUES (1,'Joao Vitor', 'Codigo de ouro', 'paulino.joao@123.com', '123456SEGURO', 'python lixo')
      ,(2,'Daniel Rodrigues', 'Sql de ouro', 'bruce-irom@hotmail.com', '432143214321', 'Sql é vida')
      ,(3,'Tiago Beneteli', 'Taco de ouro', 'tiagobeneteli@hotmail.com', '112233', 'Java > python')
      ,(4,'Ramon C P', 'Front-End de ouro', 'ramonCP@hotmail.com', '154233', 'php < all')
      ,(5,'Milton', 'Concurso de ouro', 'naoImporta@hotmail.com', 'concurso123', 'Mamar nas teta do goversno huhue')
 
INSERT INTO SOLICITA (cod_solicitante, cod_solicitado,data_solicitacao, texto, ID)
VALUES  (1,2,'2018-09-21T21:34:00','Olá querido amigo, quer ser meu amigo?',1)
		,(3,4,'2018-09-21T21:35:00','Olá querido amigo, quer ser meu amigo?', 2)
		,(5,1,'2018-09-21T21:40:00','Olá querido amigo, quer ser meu amigo?', 3)


INSERT INTO AMIZADE (cod_usu1, cod_usu2, data)
VALUES(1,3,'2018-10-17T21:40:00')
	 ,(2,4,'2018-12-21T21:40:00')
	 ,(5,2,'2018-09-14T21:40:00')
	 ,(5,4,'2018-10-19T21:40:00')	
	 ,(1,4,'2018-12-21T21:40:00')
	 
	 
INSERT INTO POSTAGEM (codigo,texto,eh_sensivel, cod_usuario, data)
VALUES (1, ' been the industrys standard dumm', 1, 1,'2018-12-21T21:40:00')
	  ,(2, ' been the industrys standardasdlahdhajd dumm', 1, 3,'2018-11-21T21:40:00')
      ,(3, ' been the industrys standard adahsdadhjwdumm', 1, 5,'2018-10-21T21:40:00')

INSERT INTO CURTIDA (cod_usu, cod_post, data)
VALUES  (2,1,'2018-11-22T21:40:00')
	   ,(3,1,'2018-11-22T18:10:00')	   
	   ,(2,3,'2018-11-22T19:14:00')
	   ,(5,2,'2018-11-22T19:14:00')
	  
INSERT INTO COMENTARIO (cod_usu, cod_post, texto, data)
VALUES  (2,1,'Curti pra caramba!!','2018-11-22T21:45:00')
	   ,(3,1,'Demais eim KKKKKKKKK','2018-11-22T18:15:00')	  
	   
SELECT * FROM USUARIO
SELECT * FROM SOLICITA
SELECT * FROM AMIZADE
SELECT * FROM POSTAGEM
SELECT * FROM CURTIDA
SELECT * FROM COMENTARIO

