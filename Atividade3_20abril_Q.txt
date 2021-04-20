create database escolaexemplo; 
use escolaexemplo;
CREATE TABLE alunes(
    id bigint(5) AUTO_INCREMENT,
    nome varchar(30) NOT NULL,
    serie bit(1),
    periodo varchar(20) NOT NULL,
    nota decimal (10,2),
    PRIMARY KEY (id) 
);
alter table alunes modify column serie char(3);

INSERT INTO alunes (nome, serie, periodo, nota) VALUES ("Maria","6","Matutino", "7.4");
INSERT INTO alunes (nome, serie, periodo, nota) VALUES ("João","1A","Noturno", "9");
INSERT INTO alunes (nome, serie, periodo, nota) VALUES ("Lucas","8B","Vespertino", "5");
INSERT INTO alunes (nome, serie, periodo, nota) VALUES ("José","6B","Matutino", "3");
INSERT INTO alunes (nome, serie, periodo, nota) VALUES ("Joana","6A","Matutino", "8.5");
INSERT INTO alunes (nome, serie, periodo, nota) VALUES ("Bruna","8B","Vespertino", "10");
INSERT INTO alunes (nome, serie, periodo, nota) VALUES ("Felipe","7C","Noturno", "5.75");
INSERT INTO alunes (nome, serie, periodo, nota) VALUES ("Aline","9A","Noturno", "6.5");

select * from alunes where nota > "7";
select * from alunes where nota < "7";

UPDATE alunes SET serie = "¨6A" WHERE id = 1;

select * from alunes;