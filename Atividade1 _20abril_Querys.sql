create database drcoelho; 
use drcoelho;
CREATE TABLE funcionarios(
    id bigint(5) AUTO_INCREMENT,
    nome varchar(20) NOT NULL,
    setor varchar(20) NOT NULL,
    salario decimal (5,2),
    admissao date,
    PRIMARY KEY (id) 
);
alter table funcionarios modify column salario decimal(10,2);

INSERT INTO funcionarios (nome, setor, salario, admissao) VALUES ("Júlia Chen","Recepção","1600.00", "2021-03-05");
INSERT INTO funcionarios (nome, setor, salario, admissao) VALUES ("Antônio Coelho","Clínica","5000.00", "2020-12-19");
INSERT INTO funcionarios (nome, setor, salario, admissao) VALUES ("Vivian Lima","Banho e Tosa","1600.00", "2021-02-06");
INSERT INTO funcionarios (nome, setor, salario, admissao) VALUES ("Alexandre Dias","Clínica","600.00", "2021-01-16");
INSERT INTO funcionarios (nome, setor, salario, admissao) VALUES ("Jeruza de Moura","Financeiro","2500.00", "2020-12-19");

select * from funcionarios where salario > "2000.00";
select * from funcionarios where salario < "2000.00";

UPDATE funcionarios SET nome = "Alexandre Souza" WHERE id = 4;

select * from funcionarios;