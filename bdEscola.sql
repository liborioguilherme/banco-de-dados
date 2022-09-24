CREATE DATABASE bdEscola

USE bdEscola

CREATE TABLE tbPeriodo (
	codPeriodo INT PRIMARY KEY IDENTITY (1,1)
	,nomePeriodo VARCHAR (20) NOT NULL 
)

CREATE TABLE tbCurso(
	codCurso int primary key identity (1,1)
	, nomeCurso varchar(30) not null
	, cargaHoraria int  not null
	, codPeriodo int foreign key references tbPeriodo(codPeriodo)
)

CREATE TABLE tbAluno(
	codAluno INT PRIMARY KEY IDENTITY(100,2)
	,nomeAluno  VARCHAR(30) NOT NULL
	,dataNascAluno SMALLDATETIME CHECK (dataNascAluno<getdate())
	,NumCasaAluno VARCHAR(10) NOT NULL
	,bairroAluno VARCHAR(20) NOT NULL 
)

 CREATE TABLE tbMatricula(
     codMatricula INT PRIMARY KEY IDENTITY (1,1)
     , dataMatricula SMALLDATETIME DEFAULT 26/08/2022
	 , codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno)
	 , codCurso INT FOREIGN KEY REFERENCES tbCurso(codCurso)
	 , codperiodo INT FOREIGN KEY REFERENCES tbPeriodo(codPeriodo)
 )

 CREATE TABLE tbfoneAluno(
 codeFone int primary key identity (1,1) not null
 , numFone varchar(15) not null
 , idAluno int foreign key references tbAluno (codAluno) NOT NULL
 )