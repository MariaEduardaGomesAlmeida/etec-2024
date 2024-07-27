CREATE DATABASE db_OngCidadeTiradentes
GO

USE db_OngCidadeTiradentes

--TABELA PADRINHO--
CREATE TABLE tblPadrinho(
codPadrinho		INT			 NOT NULL IDENTITY(1,5),
nomePadrinho	VARCHAR(100) NOT NULL,
cpfPadrinho		CHAR(14)	 NOT NULL,
PRIMARY KEY (codPadrinho) 
)



--TABELA GENITOR--
CREATE TABLE tblGenitor(
codGenitor		INT			   NOT NULL IDENTITY(1,5),
nomeGenitor		VARCHAR(100)   NOT NULL,
cpfGenitor		CHAR(14)	   NOT NULL,
PRIMARY KEY (codGenitor)
)


--TABELA DOENÇA--
CREATE TABLE tblDoenca(
codDoenca		INT			   NOT NULL IDENTITY(1,5),
nomeDoenca		VARCHAR(100)   NOT NULL,
cid				VARCHAR(300)   NOT NULL,
PRIMARY KEY (codDoenca)
)


--TABELA STATUS DA CRIANÇA--
CREATE TABLE tblStatusCrianca(
codStatusCrianca		INT			   NOT NULL IDENTITY(1,5),
descricaoStatus			VARCHAR(300)   NOT NULL,
PRIMARY KEY (codStatusCrianca)
)


--TABELA CRIANÇA--
CREATE TABLE tblCrianca(
codCrianca				INT			   NOT NULL IDENTITY(1,5),
nomeCrianca				VARCHAR(100)   NOT NULL,
dataNascCrianca			DATE		   NOT NULL,
sexoCrianca				VARCHAR(50)	   NOT NULL,
codStatusCrianca		INT			   NOT NULL,
PRIMARY KEY (codCrianca),
FOREIGN KEY (codStatusCrianca) REFERENCES tblStatusCrianca
)



--TABELA DE FILIACAO--
CREATE TABLE tblFiliacao(
codFiliacao		INT		NOT NULL IDENTITY(1,5),
codCrianca		INT		NOT NULL,
codGenitor		INT		NOT NULL,
PRIMARY KEY (codFiliacao),
FOREIGN KEY (codCrianca) REFERENCES tblCrianca
)



--TABELA DE PRONTUARIO--
CREATE TABLE tblProntuario(
codProntuario		INT				NOT NULL IDENTITY(1,5),
codCrianca			INT				NOT NULL,
obsProntuario		VARCHAR(200)	NOT NULL,
PRIMARY KEY (codProntuario),
FOREIGN KEY (codCrianca) REFERENCES tblCrianca
)



--TABELA PRONTUARIO DE DOENÇA--
CREATE TABLE tblProntuarioDoenca(
codProntuarioDoenca		INT		NOT NULL IDENTITY(1,5),
codProntuario			INT		NOT NULL,
codDoenca				INT		NOT NULL,
dataAcometimento		DATE	NOT NULL,
PRIMARY KEY (codProntuarioDoenca), 
FOREIGN KEY (codProntuario) REFERENCES tblProntuario,
FOREIGN KEY (codDoenca) REFERENCES tblDoenca
)



--TABELA APADRINHAMENTO--
CREATE TABLE tblApadrinhamento(
codApadrinhamento		INT		NOT NULL IDENTITY(1,5),
codCrianca				INT		NOT NULL,
codPadrinho				INT		NOT NULL,
dataApadrinhamento		DATE	NOT NULL,
PRIMARY KEY (codApadrinhamento),
FOREIGN KEY (codCrianca) REFERENCES tblCrianca,
FOREIGN KEY (codPadrinho) REFERENCES tblPadrinho
)



--TABELA OBSERVAÇÃO CRIANÇA--
CREATE TABLE tblObservacaoCrianca(
codObsCrianca		INT				NOT NULL IDENTITY(1,5),
codCrianca			INT				NOT NULL,
observacaoCrianca	VARCHAR(200)	NOT NULL,
dataObsCrianca		DATE			NOT NULL,
PRIMARY KEY	(codObsCrianca),
FOREIGN KEY (codCrianca) REFERENCES tblCrianca 
)


