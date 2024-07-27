CREATE DATABASE dbLivrariaBrasileira
GO
USE dbLivrariaBrasileira


--TABELA AUTOR--
CREATE TABLE tbAutor(
codAutor	INT				NOT NULL	PRIMARY KEY	IDENTITY(1,1)
,nomeAutor	VARCHAR(100)	NOT NULL	
)


--TABELA GENERO--
CREATE TABLE tbGenero(
codGenero	INT				NOT NULL	PRIMARY KEY IDENTITY(1,1)
,nomeGenero	VARCHAR(100)	NOT NULL
)


--TABELA EDITORA--
CREATE TABLE tbEditora(
codEditora		INT				NOT NULL	PRIMARY KEY IDENTITY(1,1)
,nomeEditora	VARCHAR(100)	NOT NULL
)


--TABELA LIVRO--
CREATE TABLE tbLivro(
codLivro	INT			NOT NULL	PRIMARY KEY	IDENTITY(1,1)
,nomeLivro	VARCHAR(50)	NOT NULL
,numPaginas	INT			NOT NULL
,codGenero	INT			NOT NULL	FOREIGN KEY REFERENCES tbGenero(codGenero)
,codAutor	INT			NOT NULL	FOREIGN KEY REFERENCES tbAutor(codAutor)
,codEditora	INT			NOT NULL	FOREIGN KEY REFERENCES tbEditora(codEditora)
)


--TABELA LIVRO--
INSERT INTO tbLivro VALUES
('Budapeste', 176, 2, 4, 1)
,('O Bicho-da-Seda', 454, 2, 5, 3)
,('Gabriela, Cravo e Canela', 214, 1, 2, 2)
,('Reinações de Narizinho', 143, 2, 2, 5)
,('Romeu e Julieta', 421, 1, 3, 4)
,('O Irmão Alemão', 478, 1, 4, 1)
,('Terras do Sem-Fim', 125, 1, 3, 2)
,('Animais Fantásticos e Onde Habitam', 267,2, 4, 3)


--TABELA GENERO--
INSERT INTO tbGenero VALUES
('Ficção')
,('Romance')
,('Tragédia')


--TABELA EDITORA--
INSERT INTO tbEditora VALUES 
('Melhoramentos')
,('Globo')
,('Àtica')
,('Companhia das Letras')
,('Abril')


--TABELA AUTOR--
INSERT INTO tbAutor VALUES 
('Chico Buarque')
,('Jorge Amado')
,('J.K. Rowling')
,('William Shakespeare')
,('Monteiro Lobato')
,('Cora Coralina')
,('Clarice Lispector')


SELECT * FROM tbAutor
SELECT * FROM tbEditora
SELECT * FROM tbGenero
SELECT * FROM tbLivro


-- a) A quantidade de livros agrupadas pelo nome gênero--
SELECT COUNT(nomeLivro) AS 'Quantidade Total de Livros', nomeGenero AS 'Gênero' FROM tbGenero
	LEFT JOIN  tbLivro ON tbLivro.codGenero = tbGenero.codGenero
		GROUP BY nomeGenero



-- b) A soma das páginas agrupadas pelo nome do autor--
SELECT SUM(numPaginas) AS 'Quantidade páginas', nomeAutor AS 'Autor' FROM tbLivro
	INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
		GROUP BY nomeAutor



-- c) A média de páginas agrupada pelo nome do autor em ordem alfabética (de A a Z)--
SELECT AVG(numPaginas)  AS 'Média de páginas', nomeAutor AS 'Autor' FROM tbLivro
	INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
		GROUP BY nomeAutor 
			ORDER BY nomeAutor ASC



-- d) A quantidade de livros agrupada pelo nome da editora em ordem alfabética inversa (de Z a A)--
SELECT COUNT(nomeLivro) AS 'Quantidade de Livros', nomeEditora AS 'Editora' FROM tbLivro
	FULL JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
		GROUP BY nomeEditora
			ORDER BY nomeEditora DESC



-- e) A soma de páginas dos livros agrupados pelo nome do autor que sejam de autores cujo nome comece com a letra "C"--
SELECT SUM(numPaginas) AS 'Quantidade de Páginas', nomeAutor AS 'Autor' FROM tbLivro
	FULL JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
		WHERE nomeAutor LIKE 'C%'
		GROUP BY nomeAutor



-- f) A quantidade de livros agrupados pelo nome do autor, cujo nome do autor seja "Machado de Assis" ou "Cora Coralina" ou "Graciliano Ramos" ou "Clarice Lispector"--
SELECT COUNT(nomeLivro) AS 'Quantidade de Livro', nomeAutor AS 'Autor' FROM tbLivro 
	FULL JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
		WHERE nomeAutor = 'Machado de Assis' OR nomeAutor = 'Cora Coralina' OR nomeAutor = 'Graciliano Ramos' OR nomeAutor = 'Clarice Lispector'
		GROUP BY nomeAutor



-- g) A soma das páginas dos livros agrupadas pelo nome da editora cujo número de páginas esteja entre 200 e 500 (inclusive)--
SELECT SUM(numPaginas) AS 'Soma das Páginas', nomeEditora AS 'Editora' FROM tbLivro
	INNER JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
		WHERE numPaginas > 200 AND numPaginas < 500 
		GROUP BY nomeEditora



-- h) Os nomes dos livros ao lado dos nomes das editoras e dos nomes dos autores--
SELECT nomeLivro AS 'Livro', nomeEditora AS 'Editora', nomeAutor AS 'Autor' FROM tbLivro
	FULL JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
		FULL JOIN tbAutor  ON tbLivro.codAutor = tbAutor.codAutor
			


-- i) O nome do livro ao lado do nome do autor somente daqueles cujo nome da editora for "Cia das Letras"--
SELECT nomeLivro AS 'Livro', nomeAutor AS 'Autor' FROM tbLivro
	FULL JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
		INNER JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
			WHERE nomeEditora = 'Companhia das Letras'



-- j) Os nomes dos livros ao lado dos nomes dos autores, somento dos livros que não forem do autor "Érico Veríssimo"--
SELECT nomeLivro AS 'Livro', nomeAutor AS 'Autor' FROM tbLivro
	INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
		WHERE nomeAutor != 'Érico Veríssimo'
		


-- k) Os nomes dos autores ao lado dos nomes dos livros, inclusive daqueles que não tem livros cadastrados--
SELECT nomeAutor AS 'Autor', nomeLivro AS 'Livro' FROM tbAutor
	LEFT JOIN tbLivro ON tbAutor.codAutor = tbLivro.codAutor
		 


-- l) Os nomes dos autores ao lado dos nomes dos livros, inclusive daqueles que não tem autores cadastrados--
SELECT nomeAutor AS 'Autor', nomeLivro AS 'Livro' FROM tbAutor
	RIGHT JOIN tbLivro ON tbAutor.codAutor = tbLivro.codAutor



-- m) Os nomes dos autores ao lado dos nomes dos livros, indiferente do autor ter ou não livro publicado e indiferente do livro pertencer a algum autor--
SELECT nomeAutor AS 'Autor', nomeLivro AS 'Livro' FROM tbAutor
	FULL JOIN tbLivro ON tbAutor.codAutor = tbLivro.codAutor



-- n) A editora Àtica irá publicar todos os títulos dessa livraria. Criar um select que associe os nomes de todos os livros ao lado do nome da editora Àtica--
SELECT nomeLivro AS 'Livro', nomeEditora AS 'Editora' FROM tbLivro
	INNER JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
		WHERE nomeEditora = 'Àtica'



-- o) Somente os nomes dos autores que não têm livros cadastrados--
SELECT nomeAutor AS 'Autor', nomeLivro AS 'Livro' FROM tbAutor 
	LEFT JOIN tbLivro ON tbAutor.codAutor = tbLivro.codAutor 
		WHERE nomeLivro IS NULL



-- p) Os nomes dos gêneros que não possuem nenhum livro cadastrado--
SELECT nomeGenero AS 'Gênero', nomeLivro AS 'Livro' FROM tbGenero
	LEFT JOIN tbLivro ON tbGenero.codGenero = tbLivro.codGenero
		WHERE codLivro IS NULL
