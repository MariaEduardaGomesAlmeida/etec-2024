CREATE DATABASE db_estoque
USE db_estoque
GO

--TABELA CLIENTE--
CREATE TABLE tbCliente(
 codCliente		  INT				NOT NULL IDENTITY(1,1)
,nomeCliente	  VARCHAR(60)		NOT NULL
,cpfCliente		  VARCHAR(14)		NOT NULL
,emailCliente	  VARCHAR(150)	    NOT NULL
,sexoCliente	  CHAR				NOT NULL
,dataNascCliente  DATE				NOT NULL 
PRIMARY KEY (codCliente)
)


-- TABELA FABRICANTE--
CREATE TABLE tbFabricante(
 codFabricante		INT			  NOT NULL IDENTITY(1,1)
 ,nomeFabricante	VARCHAR(100)  NOT NULL
 PRIMARY KEY (codFabricante)
)


--TABELA FORNECEDOR--
CREATE TABLE tbFornecedor(
 codFornecedor			INT				NOT NULL IDENTITY(1,1)
 ,nomeFornecedor		VARCHAR(100)	NOT NULL
 ,contatoFornecedor		VARCHAR(70)		NOT NULL
 PRIMARY KEY (codFornecedor)
)


--TABELA PRODUTO--
CREATE TABLE tbProduto(
 codProduto				INT					NOT NULL IDENTITY(1,1)
 ,descricaoProduto		VARCHAR(100)		NOT NULL
 ,valorProduto			FLOAT				NOT NULL
 ,quantidadeProduto		INT					NOT NULL
 ,codFabricante			INT					NOT NULL
 ,codFornecedor			INT					NOT NULL
 ,PRIMARY KEY (codProduto)
 ,FOREIGN KEY (codFabricante) REFERENCES tbFabricante (codFabricante)
 ,FOREIGN KEY (codFornecedor) REFERENCES tbFornecedor (codFornecedor)
)


--TABELA VENDA--
CREATE TABLE tbVenda(
 codVenda			INT			  NOT NULL IDENTITY(1,1)
 ,dataVenda			DATE		  NOT NULL
 ,valorTotalVenda	FLOAT		  NOT NULL
 ,codCliente		INT			  NOT NULL
 ,PRIMARY KEY(codVenda)
 ,FOREIGN KEY (codCliente) REFERENCES tbCliente (codCliente)
)


--TABELA ITENS VENDA--
CREATE TABLE tbItensVenda(
 codItensVenda		   INT			NOT NULL IDENTITY(1,1)
 ,codVenda			   INT			NOT NULL
 ,codProduto		   INT			NOT NULL
 ,qtdItensVenda		   INT			NOT NULL
 ,subTotalItensVenda   FLOAT		NOT NULL
 ,PRIMARY KEY(codItensVenda)
 ,FOREIGN KEY (codProduto) REFERENCES tbProduto (codProduto)
)



--INSERT TABELA CLIENTE--
INSERT INTO tbCliente VALUES
('Amando José Santana', '12345678900', 'amandojsantana@outlook.com', 'm', '21-02-1961')
,('Sheila Carvalho Leal', '45678912312', 'scarvalho@ig.com.br', 'f', '13-09-1978')
,('Carlos Henrique Souza', '23456789010', 'chenrique@ig.com.br', 'm', '08-09-1981')
,('Maria Aparecida Souza', '87365309899', 'mapdasouza@outlook.com','f', '12-06-2003')
,('Adriana Nogueira Silva', '76354309388', 'drica1977@ig.com.br', 'f', '14-08-1981')
,('Paulo Henrique Silva', '87390123111', 'phsilva80@hotmail.com', 'm', '23-03-2001')


--INSERT TABELA FABRICANTE--
INSERT INTO tbFabricante VALUES
('Unilever')
,('P&G')
,('Bunge')


--INSERT TABELA FORNECEDOR--
INSERT INTO tbFornecedor VALUES
('Atacadão', 'Carlos Santos')
,('Assaí', 'Maria Stella')
,('Roldão', 'Paulo César')


--INSERT TABELA PRODUTO--
INSERT INTO tbProduto VALUES
('Amaciante Downy', 5.76, 1500, 2, 1)
,('Amaciante Confort', 5.45, 2300, 1,1)
,('Sabão em pó OMO', 5.99, 12800,1,2)
,('Margarina Qualy', 4.76, 2500,3,1)
,('Salsicha Hot Dog Sadia', 6.78, 2900, 3,2)
,('Mortadela Perdigão',2.50, 1200,3,3)
,('Hamburger Sadia', 9.89,1600,3,1)
,('Fralda Pampers', 36.00, 340,2,3)
,('Xampu Seda', 5.89,800,1,2)
,('Condicionador Seda', 6.50, 700, 1, 3)


--INSERT TABELA VENDA--
INSERT INTO tbVenda VALUES
('01-02-2014', 4500.00, 1)
,('03-02-2014', 3400.00,1)
,('10-02-2014', 2100.00,2)
,('15-02-2014',2700.00, 3)
,('17-03-2014', 560.00, 3)
,('09-04-2014', 1200.00,4)
,('07-05-2014', 3500.00, 5)
,('07-05-2014',3400.00, 1)
,('05-05-2014', 4000.00, 2)


--INSERT TABELA ITENS VENDA--
INSERT INTO tbItensVenda VALUES
(1, 1, 200, 1500.00)
,(1, 2, 300, 3000.00)
,(2 ,4 ,120, 1400.00)
,(2, 2, 200, 1000.00)
,(2, 3, 130, 1000.00)
,(3, 5, 200, 2100.00)
,(4, 4, 120,1000.00)
,(4, 5, 450, 700.00)
,(5 , 5, 200, 560.00)
,(6, 7, 200, 600.00)
,(6, 6, 300, 600.00)
,(8, 1, 300, 2500.00)
,(8, 2, 200, 1000.00)
,(9, 6, 250, 1700.00)
,(9, 5, 200, 1700.00)
,(10, 4, 1000, 4000.00)

SELECT * FROM tbItensVenda
SELECT * FROM tbProduto
SELECT * FROM tbCliente
SELECT * FROM tbFornecedor
SELECT * FROM tbVenda
SELECT * FROM tbFabricante

-- 1) Criar uma consulta que retorne o código do produto, o nome do produto e o nome do fabricante somente daqueles prdutos que custam igual ao valor mais alto;
SELECT codProduto AS 'Código do Produto', descricaoProduto AS 'Produto', nomeFabricante AS 'Fabricante' FROM tbProduto
	INNER JOIN tbFabricante ON tbProduto.codFabricante = tbFabricante.codFabricante
		WHERE valorProduto = (SELECT MAX(valorProduto) FROM tbProduto)



-- 2) Criar uma consulta que retorne o nome do produto e o nome do fabricante e o valor somente dos produtos que custem acima do valor médio dos produtos em estoque;
SELECT descricaoProduto AS 'Produto', nomeFabricante AS 'Fabricante', valorProduto AS 'Valor do Produto' FROM tbProduto
	INNER JOIN tbFabricante ON tbProduto.codFabricante = tbFabricante.codFabricante
		WHERE valorProduto > (SELECT AVG(valorProduto) FROM tbProduto)



-- 3)  Criar uma consulta que retorne o nome dos clientes que tiveram vendas com o valor acima do valor médio das vendas;
SELECT nomeCliente AS 'Cliente', valorTotalVenda AS 'Valor da Venda' FROM tbCliente
	INNER JOIN tbVenda ON tbCliente.codCliente = tbVenda.codCliente
		WHERE valorTotalVenda > (SELECT AVG(valorTotalVenda) FROM tbVenda)



-- 4) Criar uma consulta que retorne o nome e o preço dos produtos mais caros;
SELECT descricaoProduto AS 'Produto', valorProduto AS 'Preço' FROM tbProduto
	WHERE valorProduto = (SELECT MAX(valorProduto) FROM tbProduto)



-- 5) Criar uma consulta que retorne o nome e o preço do produto mais barato;
SELECT descricaoProduto AS 'Produto', valorProduto AS 'Preço' FROM tbProduto
	WHERE valorProduto = (SELECT MIN(valorProduto) FROM tbProduto)


