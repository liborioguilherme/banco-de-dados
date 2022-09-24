DROP DATABASE  bdacademico
CREATE DATABASE bdacademico

USE bdacademico

CREATE TABLE tbDisciplina(
 iDdisciplina INT PRIMARY KEY IDENTITY(1,1)
  , nomeDisciplina VARCHAR (30) NOT NULL
  , cargaHorariaDisciplina INT   not null
  --ggg-
  )

  CREATE TABLE tbAtribuicao(
  idAtribuicao INT PRIMARY KEY IDENTITY(1,1)
   , dataAtribuicao DATE NOT NULL
   , idProfessor INT FOREIGN KEY REFERENCES tbProfessor(idProfessor)
   , idTurma int foreign key references tbTurma(idTurma)
   idDisciplina int foreign key references tbDisciplina(idDisciplina)
  )

  CREATE TABLE tbProfessor(
     idProfessor INT PRIMARY KEY IDENTITY(1,1)
     , nomeProfessor varchar(30) not null
	  , dtNascProfessor datetime not null
      , rgProfessor varchar(14) not null
  )

  CREATE TABLE tbTurma(
  idTurma INT PRIMARY KEY IDENTITY(1,1)
  , descricaoTurma VARCHAR (40) NOT NULL
  , idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso)
  , idCampus INT FOREIGN KEY REFERENCES tbCampus(idCampus)
  , nunAlunos INT VARCHAR(40) NOT NULL
  , semestre INT CHAR(2) not null
  , anoFormacao smalldatetime not null
  , numSala numeric(20) not null
  )

  create table tbCampus(
  idCampus int primary key identity(1,1)
  , nomeCampus varchar(50) not null
  )
  
  create table tbMatricula(
  idMatricula int primary key identity(1,1)
  , idAluno int foreign key references tbAluno(idAluno)
  , idTurma int foreign key references tbTurma(idTurma)
  , dtMatricula datetime not null
  )
  
  create table bdCurso(
  idCurso int primary key identity(1,1)
  , nomeCurso varchar(30) not null
  , cargaHorariaCurso INT not null
  )
  
  create table tbAluno(
  idAluno INT primary key identity(1,1)
  , nomeAluno varchar(40) NOT NULL
  , dtNascAluno  date NOT NULL
  , cpfAluno varchar(14) NOT NULL
  )
