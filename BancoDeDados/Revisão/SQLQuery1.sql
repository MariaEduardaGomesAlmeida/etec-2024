CREATE DATABASE db_Universidade
GO
USE db_Universidade


--TABELA PROFESSOR--
CREATE TABLE tblProfessor(
codProfessor		INT			    NOT NULL IDENTITY(1,4),
nomeProfessor		VARCHAR(100)    NOT NULL,
cpfProfessor		CHAR(14)		NOT NULL,
PRIMARY KEY (codProfessor) 
)



--TABELA ALUNO--
CREATE TABLE tblAluno(
codAluno		INT				NOT NULL IDENTITY(1,4),
nomeAluno		VARCHAR(100)	NOT NULL,
cpfAluno		CHAR(14)		NOT NULL,
PRIMARY KEY (codAluno)
)

--TABELA CAMPI--

CREATE TABLE tblCampi(
codCampi	INT				NOT NULL IDENTITY(1,4),
nomeCampi	VARCHAR(50)		NOT NULL,
codCursos	
)