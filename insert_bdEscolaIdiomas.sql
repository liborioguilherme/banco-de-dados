USE bdEscolaIdioma

INSERT INTO tbCurso (nomeCurso)
VALUES ('Ingl�s')
		,('Espanhol')
		,('Alem�o')

 SELECT * FROM tbCurso

 INSERT INTO tbPeriodo (descPeriodo)
 VALUES ('Manh�')
		,('Tarde')
		,('Noite')

SELECT *FROM tbPeriodo

INSERT INTO tbNivel (descNivel)
	VALUES ('B�sico')
		   ,('Intermedi�rio')
		   ,('Avan�ado')

	SELECT * FROM tbNivel

INSERT INTO tbDiassemana (diaSemana)
	VALUES ('Segunda-feira')
			,('Ter�a-feira')
			,('Quarta-feira')
			,('Quinta-feira')
			,('Sexta-feira')
			,('S�bado')

	SELECT * FROM tbDiassemana

INSERT INTO tbAluno (nomeAluno, rgAluno, enderecoAluno, numEndaluno, compAluno, bairroAluno, cepAluno, cidadeAluno)
	VALUES ('Erick Santos Brito', '13246578', 'Rua do Socorro - Tiradentes', '10', 'A', 'Vila Yolanda', '12345678', 'S�o Paulo')
			,('Gabriel dos Santos Gomes', '12345678', 'Rua Baltazar Barroso', '185', 'A', 'Guianases', '87654321', 'S�o Paulo')
			,('Guilherme Lib�rio','87654321', 'Rua Ant�nio Tadeu', '373', 'C', 'Lageado', '089765431','S�o Paulo')
			,('Thiago Tadeu Brand�o', '89766541', 'Rua do Riso', '37', 'D', 'Bairro da Alegria', '78695432', 'S�o Paulo')
			,('Renan dos Santos Jesus', '90807060', 'Rua dos Bobos', '0', 'E', 'Bairro do Limoeiro', '75614290', 'Po�')
			,('Kauan da Silva', '00000000', 'Rua das Faltas', '0', 'I', 'Bairro da aus�ncia', '00000000', 'Itu')

		SELECT * FROM tbAluno

INSERT INTO tbTurma (horario, idCurso, idPeriodo, idNivel, idDiasemana)
	VALUES ('7:00:00', 1, 1, 1, 6)
		   ,('9:00:00', 2, 1, 2, 1)
		   ,('11:00:00', 3, 1, 3, 2)
		   ,('13:00:00', 1, 2, 2, 3)
		   ,('18:30:00', 2, 3, 2, 4)

		SELECT * FROM tbTurma

INSERT INTO tbMatricula (idAluno, idTurma)
	VALUES (1, 1)
		   ,(1, 2)
		   ,(2, 3)
		   ,(2, 4)
		   ,(3, 5)
		   ,(3, 1)
		   ,(4, 2)
		   ,(4, 3)
		   ,(5, 4)
		   ,(5, 5)
		   ,(6, 1)
		   ,(6, 2)

		SELECT * FROM tbMatricula

INSERT INTO tbFonealuno (foneAluno, idAluno)
	VALUES ('+55 (11) 98049-9409', 1)
			,('+55 (11) 91234-5678',1)
			,('+55 (11) 98288-8955', 2)
			,('+55 (11) 94860-7409',2)
			,('+55 (11) 98412-0112', 3)
			,('+55 (11) 98765-4321',3)
			,('+55 (11) 96268-1101',4)
			,('+55 (11) 92143-5768',4)
			,('+55 (11) 96358-5735',5)
			,('+55 (11) 97865-4231',5)
			,('+55 (11) 94796-5088',6)
			,('+55 (11) 96584-0934',6)

		SELECT * FROM tbFonealuno
