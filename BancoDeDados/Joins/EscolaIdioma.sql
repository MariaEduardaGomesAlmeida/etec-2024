CREATE DATABASE db_escolaIdiomas

USE db_escolaIdiomas
GO

--TABELA CURSO--
CREATE TABLE tbl_curso(
codCurso			INT			NOT NULL	IDENTITY(1,1)
,nomeCurso			VARCHAR(40)	NOT NULL
,cargahorariaCurso	VARCHAR(10)	NOT NULL
,valorCurso			FLOAT		NOT NULL
PRIMARY KEY (codCurso)
)



--TABELA TURMA--
CREATE TABLE tbl_turma(
codTurma				INT			NOT NULL	IDENTITY(1,1)
,nomeTurma				VARCHAR(20)	NOT NULL
,codCurso				INT			NOT NULL
,horarioTurma			DATETIME	NOT NULL
PRIMARY KEY (codTurma)
FOREIGN KEY (codCurso) REFERENCES tbl_curso
)



--TABELA ALUNO--
CREATE TABLE tbl_aluno(
codAluno			INT				NOT NULL	IDENTITY(1,1)
,nomeAluno			VARCHAR(100)	NOT NULL
,dataNascAluno		DATE			NOT NULL
,rgAluno			VARCHAR(12)		NOT NULL
,naturalidadeAluno	VARCHAR(50)
PRIMARY KEY (codAluno)
)



--TABELA MATRICULA--
CREATE TABLE tbl_matricula(
codMatricula		INT		NOT NULL	IDENTITY(1,1)
,dataMatricula		VARCHAR(8)	NOT NULL
,codAluno			INT		NOT NULL
,codTurma			INT		NOT NULL
,PRIMARY KEY (codMatricula)
,FOREIGN KEY (codAluno) REFERENCES tbl_aluno
,FOREIGN KEY (codTurma) REFERENCES tbl_turma
)



--TABELA ALUNO--
INSERT INTO tbl_aluno VALUES
('Paulo Santos', '2000-03-10 00:00:00', '822821220', 'SP')
,('Maria da Gloria', '1999-10-03 00:00:00', '452331230', 'SP')
,('Pedro Nogueira da Silva', '1998-04-04 00:00:00', '235332119', 'SP')
,('Gilson Barros Silva','1995-09-09 00:00:00','34221111x','PE')
,('Mariana Barbosa Santos', '2001-10-10 00:00:00', '542221229', 'RJ')
,('Alessandro Pereira', '2003-10-11 00:00:00', '244024549', 'ES')
,('Aline Melo', '2001-10-08 00:00:00', '883650123', 'RJ')



--TABELA CURSO--
INSERT INTO tbl_curso VALUES
('Inglês', 2000, 356.00)
,('Alemão', 3000, 478.00)
,('Espanhol', 4000, 500.00)



--TABELA TURMA--
INSERT INTO tbl_turma VALUES
('1|A', 1, '1900-01-01 12:00:00')
,('1|C', 3, '1900-01-01 18:00:00')
,('1|B', 1, '1900-01-01 18:00:00')
,('1AA', 2, '1900-01-01 19:00:00')



--TABELA MATRICULA--
INSERT INTO tbl_matricula VALUES
('2015-10-03 00:00:00', 1, 1)
,('2014-05-04 00:00:00', 2, 1)
,('2014-05-04 00:00:00', 2, 4)
,('2012-05-03 00:00:00', 3, 2)
,('2016-03-03 00:00:00', 1, 3)
,('2015-05-07 00:00:00', 4, 2)
,('2015-07-05 00:00:00', 4, 3)



SELECT * FROM tbl_aluno
SELECT * FROM tbl_curso
SELECT * FROM tbl_matricula
SELECT * FROM tbl_turma



--1) Apresentar os nomes dos alunos ao lado do nome dos cursos que eles fazem;
SELECT nomeAluno AS 'Aluno', nomeCurso AS 'Curso' FROM tbl_aluno
	INNER JOIN tbl_matricula ON tbl_aluno.codAluno = tbl_matricula.codAluno
		INNER JOIN tbl_turma ON tbl_matricula.codTurma = tbl_turma.codTurma
			INNER JOIN tbl_curso ON tbl_turma.codCurso = tbl_curso.codCurso




--2) Apresentar a quantidade de alunos matriculados por nome do curso;
SELECT nomeCurso AS 'Curso' ,COUNT(nomeAluno) AS 'Total de Alunos' FROM tbl_aluno
	INNER JOIN tbl_matricula ON tbl_aluno.codAluno = tbl_matricula.codAluno
		INNER JOIN tbl_turma ON tbl_matricula.codTurma = tbl_turma.codTurma
			INNER JOIN tbl_curso ON tbl_turma.codCurso = tbl_curso.codCurso
				GROUP BY nomeCurso




--3) Apresentar a quantidade de alunos matriculados por nome da turma;
SELECT COUNT(nomeAluno) AS 'Total de Alunos', nomeTurma FROM tbl_aluno
	INNER JOIN tbl_matricula ON tbl_aluno.codAluno = tbl_matricula.codAluno
		INNER JOIN tbl_turma ON tbl_matricula.codTurma = tbl_turma.codTurma
			GROUP BY nomeTurma




--4) Apresentar a quantidade de alunos que fizeram matriculas em maio de 2016;
SELECT COUNT(codAluno) AS 'Total de Alunos' FROM tbl_matricula 
		WHERE YEAR(tbl_matricula.dataMatricula) = 2016 AND MONTH(tbl_matricula.dataMatricula) = 5
			



--5) Apresentar o nome dos alunos em ordem alfabética ao lado do nome das turmas e os nomes dos cursos em que estão matriculados;
SELECT nomeAluno AS 'Aluno', nomeTurma AS 'Turma', nomeCurso AS 'Curso' FROM tbl_aluno
	INNER JOIN tbl_matricula ON tbl_aluno.codAluno = tbl_matricula.codAluno
		INNER JOIN tbl_turma ON tbl_matricula.codTurma = tbl_turma.codTurma
			INNER JOIN tbl_curso ON tbl_turma.codCurso = tbl_curso.codCurso
				ORDER BY nomeAluno ASC




--6) Apresentar o nome dos cursos e os horários em que eles são oferecidos;
SELECT nomeCurso AS 'Curso', horarioTurma AS 'Horário Curso' FROM tbl_curso
	INNER JOIN tbl_turma ON tbl_curso.codCurso = tbl_turma.codCurso
		



--7) Apresentar a quantidade de alunos nascidos por estado que estejam matriculados no curso de inglês;
SELECT COUNT(nomeAluno) AS 'Quantidade Aluno', naturalidadeAluno AS 'Naturalidade' FROM tbl_aluno
	INNER JOIN tbl_matricula ON tbl_aluno.codAluno = tbl_matricula.codAluno
		INNER JOIN tbl_turma ON tbl_matricula.codTurma = tbl_turma.codTurma
			INNER JOIN tbl_curso ON tbl_turma.codCurso = tbl_curso.codCurso
			WHERE nomeCurso = 'Inglês'
			GROUP BY naturalidadeAluno
	 



--8) Apresentar o nome dos alunos ao lado da data de matricula no formato dd/mm/aaaa;
SELECT nomeAluno AS 'Aluno', CONVERT (VARCHAR, dataMatricula,103) AS 'Data da Matricula' FROM tbl_aluno
	INNER JOIN tbl_matricula ON tbl_aluno.codAluno = tbl_matricula.codAluno
		



--9) Apresentar os alunos cujo nome comece com A e que estejam matriculados no curso de inglês;
SELECT nomeAluno AS 'Aluno' FROM tbl_aluno 
INNER JOIN tbl_matricula ON tbl_aluno.codAluno = tbl_matricula.codAluno
		INNER JOIN tbl_turma ON tbl_matricula.codTurma = tbl_turma.codTurma
			INNER JOIN tbl_curso ON tbl_turma.codCurso = tbl_curso.codCurso
				WHERE nomeAluno LIKE 'A%' AND nomeCurso = 'Inglês'
	



--10) Apresentar a quantidade de matriculas feitas no ano de 2016;
SELECT COUNT(codAluno) AS 'Quantidade de matrícula' FROM tbl_matricula 
	WHERE YEAR(tbl_matricula.dataMatricula) = 2016




--11) Apresentar a quantidade de matriculas por nome de curso;
SELECT COUNT(nomeAluno) AS 'Quantidade de matricula', nomeCurso AS 'Curso' FROM tbl_aluno
	INNER JOIN tbl_matricula ON tbl_aluno.codAluno = tbl_matricula.codAluno
		INNER JOIN tbl_turma ON tbl_matricula.codTurma = tbl_turma.codTurma
			INNER JOIN tbl_curso ON tbl_turma.codCurso = tbl_curso.codCurso
				GROUP BY nomeCurso 




--12) Apresentar a quantidade de alunos que fazem os cursos que custam mais de R$300,00;
SELECT COUNT(nomeAluno) AS 'Quantidade de Alunos' FROM tbl_aluno
	INNER JOIN tbl_matricula ON tbl_aluno.codAluno = tbl_matricula.codAluno
		INNER JOIN tbl_turma ON tbl_matricula.codTurma = tbl_turma.codTurma
			INNER JOIN tbl_curso ON tbl_turma.codCurso = tbl_curso.codCurso
				WHERE valorCurso > 300
	



--13) Apresentar os nomes dos alunos que fazem o curso de alemão.
SELECT nomeAluno AS 'Alunos do Curso de Alemão' FROM tbl_aluno 
	INNER JOIN tbl_matricula ON tbl_aluno.codAluno = tbl_matricula.codAluno
		INNER JOIN tbl_turma ON tbl_matricula.codTurma = tbl_turma.codTurma
			INNER JOIN tbl_curso ON tbl_turma.codCurso = tbl_curso.codCurso
				WHERE nomeCurso = 'Alemão' 