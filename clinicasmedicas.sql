begin;
create schema clinicas_medicas;
use clinicas_medicas;

/*Criando as tabelas*/
create table Clinicas(
	CodCli char(15) not null,
    NomeCli varchar(15) not null,
    Endereco varchar(40) not null,
    Telefone char(10) not null,
    e_mail varchar(15) not null,
    primary key(CodCli)
);
create table Especialidade(
	CodEspec char(15) not null,
    NomeEspec varchar(15) not null,
    Descricao varchar(40) not null,
    primary key(CodEspec)
);

create table Medico(
	CodMed char(15) not null, 
    NomeMed varchar(15) not null, 
    Genero char not null, 
    Telefone char(10) not null, 
    E_mail varchar(15) not null, 
    CodEspec char(15) not null,
    primary key (CodMed),
	foreign key (CodEspec) references Especialidade (CodEspec)

);
create table Paciente(
	CpfPaciente char(11) not null,
    NomePac varchar(15) not null,
    DataNascimento date not null,
    Genero char not null,
    Telefone char(10) not null,
    E_mail varchar(15) not null,
    primary key(CpfPaciente)
);
create table ClinicaMedico(
	CodCli char(15) not null, 
    CodMed char(15) not null, 
    DataIngresso date, 
    CargaHorariaSemanal float,
    foreign key (CodCli) references Clinicas (CodCli),
    foreign key (CodMed) references Medico (CodMed),
    primary key(CodCli, CodMed)
);
create table AgendaConsulta(
	CodCli char(15) not null,
    CodMed char(15) not null,
    CpfPaciente char(11) not null,
    Data_Hora date,
    foreign key (CodCli, CodMed) references ClinicaMedico(CodCli, CodMed),
    foreign key (CpfPaciente) references Paciente(CpfPaciente),
    primary key(CodCli, CodMed, CpfPaciente, Data_Hora)
);


/*__Adicionando as restrições__*/

/*Restrição 1: Unicidade*/
alter table Medico
add constraint unique (E_mail);

/*Restrição 1: Unicidade*/
alter table Paciente
add constraint unique (E_mail);

/* Restrição 3: set default*/
alter table ClinicaMedico alter CargaHorariaSemanal set default 20.0;

/*Restrição 4: On Delete*/
alter table Medico
drop foreign key CodEspec;
alter table Medico
add constraint foreign key (CodEspec) 
references Especialidade
on delete cascade;

