begin;
create schema BD_Startup;
use BD_Startup;

create table Startup(
	id_startup INT,
    nome_startup VARCHAR(30),
    cidade_sede VARCHAR(35),
    primary key(id_startup)
);
create table Linguagem_Programação (
	id_linguagem INT, 
	nome_linguagem VARCHAR(25), 
	ano_lançamento INT,
	primary key(id_linguagem)
);

create table Programador (
	id_programador INT, 
	id_startup INT, 
	nome_programador VARCHAR(45), 
	gênero char(1), 
	data_nascimento DATE, 
	email VARCHAR(45),
    primary key(id_programador),
    foreign key(id_startup) references Startup(id_startup)
);

create table Programador_Linguagem (
	id_programador INT,
	id_linguagem INT,
	foreign key(id_programador) references Programador(id_programador),
	foreign key(id_linguagem) references Linguagem_Programação(id_linguagem),
    primary key(id_programador, id_linguagem)
);





