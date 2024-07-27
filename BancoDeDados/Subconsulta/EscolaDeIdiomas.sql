CREATE DATABASE bdEscolaDeIdiomas
USE bdEscolaDeIdiomas
GO

CREATE TABLE tbAluno(
	codAluno		INT			  PRIMARY KEY IDENTITY (1,1)
	, nomeAluno		VARCHAR(70)   NOT NULL
	, rgAluno		VARCHAR(12)   NOT NULL
	, cpfAluno		VARCHAR(15)   NOT NULL
	, logradouro	VARCHAR(70)   NOT NULL
	, numero		VARCHAR(20)   NOT NULL
	, complemento	VARCHAR(50)
	, cep			VARCHAR(9)    NOT NULL
	, bairro		VARCHAR(50)   NOT NULL
	, cidade		VARCHAR(50)	  NOT NULL
	, dataNascAluno SMALLDATETIME NOT NULL
)

CREATE TABLE tbTelefoneAluno(
	codTelAluno		INT			PRIMARY KEY IDENTITY(1,1)
	, numTelAluno	VARCHAR(12) NOT NULL
	, codAluno		INT FOREIGN KEY REFERENCES tbAluno(codAluno)
)

CREATE TABLE tbCurso(
	codCurso	 INT PRIMARY KEY IDENTITY (1,1)
	, nomeCurso  VARCHAR (50)	NOT NULL
	, valorCurso SMALLMONEY		NOT NULL
)

CREATE TABLE tbNivel(
	codNivel	INT PRIMARY KEY IDENTITY (1,1)
	, descNivel VARCHAR(50)
)

CREATE TABLE tbPeriodo(
	codPeriodo		INT PRIMARY KEY IDENTITY (1,1)
	, descPeriodo	VARCHAR (50) NOT NULL
)

CREATE TABLE tbTurma(
	codTurma		INT PRIMARY KEY IDENTITY (1,1)
	, descTurma		VARCHAR (50) NOT NULL
	, codCurso		INT FOREIGN KEY REFERENCES tbCurso(codCurso)
	, codNivel		INT FOREIGN KEY REFERENCES tbNivel(codNivel)
	, codPeriodo	INT FOREIGN KEY REFERENCES tbPeriodo(codPeriodo)
	, horario SMALLDATETIME NOT NULL
	, diaSemana VARCHAR (15) NOT NULL
)

CREATE TABLE tbMatricula(
	codMatricula	INT PRIMARY KEY IDENTITY (1,1)
	, dataMatricula SMALLDATETIME NOT NULL
	, codAluno		INT FOREIGN KEY REFERENCES tbAluno(codAluno)
	, codTurma		INT FOREIGN KEY REFERENCES tbTurma(codTurma)
)


--TABELA ALUNO--
INSERT INTO tbAluno(nomeAluno, rgAluno, cpfAluno, logradouro, numero, complemento, cep, bairro, cidade, dataNascAluno)
VALUES
	('Patrick Lessa Teixeira', '123456789', '12345678900', 'Rua Faultline', '10A', 'casa', '08121210', 'Silverchair Paulista', 'São Paulo', '03/05/2002')
	, ('Igor Morais Da Silva', '123456789', '12345678900', 'Rua Hardwired', '31', 'casa', '08120565', 'Nirvana Paulistano', 'Campo Grande', '10/02/2001')
	, ('Ana Silva', '123456789', '12345678900', 'Rua Blackened', 'Bloco B-10A', 'apartamento', '08121880', 'Bairro do Limoeiro', 'São Paulo', '11/11/2003')
	, ('Icaro Oliva', '123456789', '12345678900', 'Rua Shade', '654', 'casa', '08121770', 'Silverchair Paulista', 'São Paulo', '06/02/2001')
	, ('Beatriz Campos', '123456789', '12345678900', 'Rua Sirens', '789', 'casa', '08121990', 'Vadder Paulista', 'São Paulo', '23/08/2001')


--TABELA TELEFONE DO ALUNO--
INSERT INTO tbTelefoneAluno(numTelAluno, codAluno)
VALUES 
	('1125629643', 1)
	, ('35962925729', 2)
	, ('1186547998', 4)


--TABELA CURSO--
INSERT INTO tbCurso(nomeCurso, valorCurso)
VALUES
	('Inglês', 150.99)
	, ('Espanhol', 99.99)


--TABELA NIVEL--
INSERT INTO tbNivel(descNivel)
VALUES
	('Iniciante')
	, ('Intermediário')
	, ('Avançado')


--TABELA PERIODO--
INSERT INTO tbPeriodo(descPeriodo)
VALUES
	('Manhã')
	, ('Tarde')


--TABELA TURMA--
INSERT INTO tbTurma(descTurma, codCurso, codNivel, codPeriodo, horario, diaSemana)
VALUES 
	('Inglês 1A', 1, 1, 1, '07:00:00', 'Sábado')
	, ('Inglês 2A', 1, 2, 2, '13:00:00', 'Sábado')
	, ('Espanhol 1A', 2, 1, 2, '13:00:00', 'Sábado')


--TABELA MATRICULA--
INSERT INTO tbMatricula(dataMatricula, codAluno, codTurma)
VALUES
	('18/07/2019', 1, 1)
	, ('10/01/2019', 2, 2)
	, ('17/07/2019', 3, 3)
	, ('24/05/2019', 4, 1)
	, ('11/01/2019', 5, 2)


SELECT * FROM tbAluno
SELECT * FROM tbCurso
SELECT * FROM tbMatricula
SELECT * FROM tbNivel
SELECT * FROM tbPeriodo
SELECT * FROM tbTelefoneAluno
SELECT * FROM tbTurma


-- a) Criar uma consulta que retorne o nome e o preço dos cursos que custem abaixo do valor médio
SELECT nomeCurso AS 'Curso', valorCurso AS 'Preço do Curso' FROM tbCurso 
	WHERE valorCurso < (SELECT AVG(valorCurso) FROM tbCurso)



-- b) Criar uma consulta que retorne o nome e o rg do aluno mais novo
SELECT nomeAluno AS 'Aluno', rgAluno AS 'RG' FROM tbAluno
	WHERE dataNascAluno = (SELECT MAX(dataNascAluno) FROM tbAluno)



-- c) Criar uma consulta que retorne o nome do aluno mais velho
SELECT nomeAluno AS 'Aluno' FROM tbAluno
	WHERE dataNascAluno = (SELECT MIN(dataNascAluno) FROM tbAluno)



-- d) Criar uma consulta que retorne o nome e o valor do curso mais caro
SELECT nomeCurso AS 'Curso', valorCurso AS 'Preço' FROM tbCurso
	WHERE valorCurso = (SELECT MAX(valorCurso) FROM tbCurso)



-- e) Criar uma consulta que retorne o nome do aluno e o nome do curso, do aluno que fez a última matrícula
SELECT nomeAluno AS 'Aluno', nomeCurso 'Curso' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
			INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
				WHERE dataMatricula = (SELECT MAX(dataMatricula) FROM tbMatricula)



-- f) Criar uma consulta que retorne o nome do primeiro aluno a ser matriculado na escola de idiomas
SELECT nomeAluno AS 'Aluno' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
			INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
				WHERE dataMatricula = (SELECT MIN(dataMatricula) FROM tbMatricula)



-- g) Criar uma consulta que retorne o nome, rg e data de nascimento de todos os alunos que estejam matriculados no curso de inglês
SELECT nomeAluno AS 'Aluno', rgAluno AS 'RG', dataNascAluno AS 'Data de Nascimento' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
			INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
				WHERE nomeCurso = 'Inglês'