use clinicas_medicas;

-- Foi necessário alterar a capacidade delagumas colunas
ALTER TABLE clinicas MODIFY COLUMN E_mail varchar(55),
modify column NomeCli varchar(40),
MODIFY COLUMN endereco varchar(100);

INSERT INTO clinicas values
("000000", "Oswaldo Michael", "Rua do Martelo, 165,Timbi, Camaragibe", "8892-3326", "oswaldomichael@oswaldomichael.com.br"),
("666666", "Deivson Clayton & Socios", "Rua do nome, 666, Boa Vista, Recife", "777-666", "d_c_s@live.com"),
("165222", "Menos Vida medicina", "Rua da novidade, 72, Ceu Azul, Carpina", "7675-7473", "menosvida_medicina@yahoo.com"),
("65201312", "Hospital um paço do inferno", "Rua rua, 354, South Park, Colorado", "3431-0416", "hupdi@gmail.com");

INSERT INTO especialidade values
("12321", "Ortopedia", "Saude dos ossos, musculos e tendões."),
("06791", "Pediatria", "Saude infantil dos 0 até os 13 anos."),
("55631", "Ginecologia", "Saude da mulher."),
("81164", "Hebiatria", "Saude do adolescente."),
("67295", "Clinico Geral", "Diagnostico de doenças e encominhamento."),
("59020", "Oftalmologia", "Saude Ocular.");


ALTER TABLE medico MODIFY COLUMN E_mail varchar(55);

INSERT INTO medico values
("11111", "Carlinhos Bala", "M", "8922-2456", "carlinhos_bala_thegoat_@hotmail.com", "12321"),
("22222", "Kiko Florinda", "M", "9945-9945", "kiko_radical@hotmail.com", "06791"),
("33333", "Xuxa Meneguel", "F", "7545-4180", "xuxa_eternal@gmail.com", "06791"),
("44444", "Alastor Moody", "M", "0098-4300", "alastor_tonto@hogwarts.com.uk", "59020"),
("55555", "Sakura Haruno", "F", "5656-5656", "sakura_sasuke@konoha.com", "55631"),
("66666", "Ororo Munroe", "F", "4502-7622", "storm_x@xmen.com", "67295"),
("77777", "Charles Xavier", "M", "3341-4231", "charles_xavier@xmen.com", "81164"),
("88888", "Anderson Silva", "M", "6520-2311", "the_spider@ufc.com", "12321"),
("99999", "Lois Griffin", "F", "7777-8763", "griffin_lois@yahoo.com", "55631");


INSERT INTO clinicamedico values 
("000000", '33333', '1500-05-10', "8.0"),
("000000", '77777', '2005-7-11', "7.0"),
("000000", '44444', '2010-03-13', "10.0"),
("165222", '99999', '2018-09-30', "6.0"),
("165222", '22222', '2008-04-05', "7.5"),
("666666", '66666', '2019-12-04', "7.5"),
("65201312", '11111', '2004-06-25', "6.0");


ALTER TABLE paciente 
MODIFY COLUMN E_mail varchar(55),
MODIFY COLUMN NomePac varchar(40);

INSERT INTO paciente values
("44467542035", "Conor McGregor", '1986-09-20', "M", "9867-0981", "thenotorious@mctapper.com"),
("18636203031", "Victor Shade Visão", '1968-10-20', "M", "6543-9090", "ultron@avengers.com"),
("57058596000", "Hermione Granger", '1990-05-10', "F", "5462-0011", "grangerweasley@yahoo.com"),
("31207699080", "Daenerys Targeryen", '1955-07-11', "F", "6700-1000", "targeryen_dragon@redcap.com"),
("39196249048", "Eric Cartman", '2008-05-13', "M", "6002-7777", "xx_eric_xx@outlook.com"),
("37774935037", "Willow Smith", '1998-09-15', "F", "5555-3940", "smith_star@live.com"),
("17635794094", "Gerald Johanssen", "2005-11-17", "M", "7787-8888", "don_da@hotmail.com");

ALTER TABLE agendaconsulta 
MODIFY COLUMN Data_Hora varchar(20);

INSERT INTO agendaconsulta values
("65201312", "11111", "44467542035", "12-10/09:10"),
("000000", "44444", "18636203031", "31-12/23:59"),
("165222", "99999", "57058596000", "04-10/16:45"),
("666666", "66666", "31207699080", "26-11/17:50"),
("000000", "33333", "39196249048", "08-09/10:30"),
("000000", "77777", "17635794094", "11-03/08:35"),
("165222", "99999", "37774935037", "09-01/09:00");


