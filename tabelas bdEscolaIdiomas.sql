CREATE DATABASE bdEscolaidioma
 GO 
 USE  bdEscolaidioma
 

 CREATE TABLE tbPeriodo(
 idPeriodo INT PRIMARY KEY IDENTITY (1,1)
 ,descPeriodo VARCHAR(50)
 )

 CREATE TABLe tbNivel(
 idNivel INT PRIMARY KEY IDENTITY(1,1)
 , descNivel VARCHAR(50)
 )

 CREATE TABLE tbCurso(
 idCurso INT PRIMARY KEY IDENTITY (1,1)
 , nomeCurso VARCHAR(70)
 )

 CREATE TABLE tbDiassemana(
 idDiasemana INT PRIMARY KEY IDENTITY (1,1)
 ,Diasemana VARCHAR(20)
 )

 CREATE TABLE tbAluno(
 idAluno INT PRIMARY KEY IDENTITY (1,1)
 ,nomeAluno VARCHAR(50)
 , rgAluno VARCHAR(8)
 , enderecoAluno VARCHAR(60)
 , numEndaluno VARCHAR(60)
 , compAluno VARCHAR(50)
 , bairroAluno VARCHAR(60)
 , cepAluno VARCHAR(60)
 ,cidadeAluno VARCHAR(60)
 )

 CREATE TABLE tbMatricula(
 idMatricula INT PRIMARY KEY IDENTITY(1,1)
 , dataMatricula DATE 
 , idAluno  INT FOREIGN KEY REFERENCES tbAluno (idAluno)
 , idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma)
 )


 CREATE TABLE tbTurma(
 idTurma INT PRIMARY KEY IDENTITY (1,1)
 , horario TIME
 , idCurso INT FOREIGN KEY REFERENCES tbCurso (idCurso)
 , idPeriodo INT FOREIGN KEY REFERENCES tbPeriodo (idPeriodo)
 , idNivel INT FOREIGN KEY REFERENCES tbNivel (idNivel)
 , idDiasemana INT FOREIGN KEY REFERENCES tbDiassemana (idDiasemana)
 )

 CREATE TABLE tbFonealuno(
 idFonealuno INT PRIMARY KEY IDENTITY(1,1)
 , foneAluno VARCHAR(18)
 , idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
 )