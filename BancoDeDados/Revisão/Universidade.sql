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
codCursos	INT				NOT NULL
PRIMARY KEY(codCampi)
)

--TABELA CURSO--
CREATE TABLE tblCurso(
codCurso				INT				NOT NULL,
nomeCurso				VARCHAR(50)		NOT NULL,
codDisciplinaDeCurso	INT				NOT NULL,
codProfessorCoordenador	INT				NOT NULL,
idCampi					INT				NOT NULL,
turmasCurso				VARCHAR			NOT NULL,
PRIMARY KEY(codCurso),
FOREIGN KEY(codDisciplinaDeCurso) REFERENCES tblDisciplinaDeCurso,
FOREIGN KEY(codProfessorCoordenador) REFERENCES tblProfessor,
FOREIGN KEY(idCampi) REFERENCES tblCampi
)

--TABELA TURMA--
CREATE TABLE tblTurma(
codTurma				INT		NOT NULL,
codCurso				INT		NOT NULL,
anoFormacao				INT		NOT NULL,
numeroSalaCampus		INT		NOT NULL,
quantiAlunos			INT		NOT NULL
PRIMARY KEY(codTurma)
FOREIGN KEY(codCurso)	REFERENCES tblCurso
)


--TABELA DISCIPLINA--
CREATE TABLE tblDisciplina(
codDisciplina			INT		NOT NULL,
codDisciplinaDeCurso	INT		NOT NULL,
codProfessorDisciplina	INT		NOT NULL,
nomeDisciplina			VARCHAR	NOT NULL,
PRIMARY KEY(codDisciplina),
FOREIGN KEY(codDisciplinaDeCurso)	REFERENCES tblDisciplinaDeCurso,
FOREIGN KEY(codProfessorDisciplina)	REFERENCES tblProfessorDisciplina
)



--TABELA DISCIPLINA PROFESSOR--
CREATE TABLE tblDisciplinaProfessor(
codDisciplinaProfessor		INT		NOT NULL,
codDisciplina				INT		NOT NULL,
codProfessor				INT		NOT NULL,
PRIMARY KEY (codDisciplinaProfessor),
FOREIGN KEY (codDisciplina) REFERENCES tblDisciplina,
FOREIGN KEY (codProfessor) REFERENCES tblProfessor
)



--TABELA DISCIPLINA DE CURSO--
CREATE TABLE tblDisciplinaDeCurso(
codDisciplinaDeCurso	INT		NOT NULL,
codDisciplina			INT		NOT NULL,
codCurso				INT		NOT NULL,
PRIMARY KEY	(codDisciplinaDeCurso),
FOREIGN KEY (codDisciplina) REFERENCES tblDisciplina,
FOREIGN KEY (codCurso) REFERENCES tblCurso
)