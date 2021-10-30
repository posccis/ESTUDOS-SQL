begin;
-- CREATE SCHEMA Publicacoes_Cientificas;
use publicacoes_cientificas;

CREATE TABLE revista_cientifica(
	cod_revista INT,
    nome_revista VARCHAR(45),
    sigla VARCHAR(5),
    issn INT,
    doi VARCHAR(100) NULL,
    url VARCHAR(100),
    PRIMARY KEY (cod_revista)
    
    
);

CREATE TABLE instituição(
	cod_instituição INT,
    nome VARCHAR(45),
    sigla VARCHAR(5),
    categoria VARCHAR(30),
    primary key(cod_instituição)
    
		
);

CREATE TABLE ARTIGO(
	cod_artigo INT,
    titulo VARCHAR(110),
    Qtd_Páginas INT,
    Ano_Publicação date,
    Area_Conhecimento VARCHAR(45),
    primary key(cod_artigo)
);

CREATE TABLE PESQUISADOR (
	Cod_Pesq INT,
    Nome_Pesq VARCHAR(100),
    Email VARCHAR(50),
    Data_Nascimento DATE,
    Curriculo_Lattes VARCHAR(100),
    Ocupação VARCHAR(40),
    Cod_Instituição INT, 
    PRIMARY KEY(cod_pesq),
    FOREIGN KEY (cod_instituição) references instituição(cod_instituição)
);

CREATE TABLE Artigo_Periodico (
	Cod_Artigo INT,
    Volume INT,
    Numero INT,
    Cod_Revista INT,
    foreign key(Cod_Artigo) references Artigo(cod_artigo),
	foreign key(Cod_Revista) references Revista_Cientifica(cod_revista)
);

CREATE TABLE Artigo_Congresso (
	Cod_Artigo INT,
	Nome_Congresso VARCHAR(100),
	Sigla VARCHAR(10),
	Cidade_Congresso VARCHAR(45),
	Data_Congresso DATE,
    FOREIGN KEY (Cod_Artigo) references Artigo(cod_artigo)
 );
 
CREATE TABLE Palavra_Chave (
	Cod_Artigo INT,
	Palavra_Chave VARCHAR(150),
    foreign key(cod_artigo) references Artigo(cod_artigo)
 );

CREATE TABLE Autoria (
	Cod_Artigo INT,
    Cod_Pesq INT,
    Posicao_Autor INT,
    foreign key(cod_artigo) references Artigo(cod_artigo),
    foreign key(cod_pesq) references Pesquisador(cod_pesq)
);





