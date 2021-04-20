create database drcoelhoshop; 
use drcoelhoshop;
CREATE TABLE produtos(
    id bigint(5) AUTO_INCREMENT,
    nome varchar(20) NOT NULL,
    setor varchar(20) NOT NULL,
    preco decimal (10,2),
    fornecedor varchar(30),
    PRIMARY KEY (id) 
);
alter table produtos modify column nome varchar(50);

INSERT INTO produtos (nome, setor, preco, fornecedor) VALUES ("Roupa cirurgica - cão até 10 kg","Clínico-Cirurgica","150.00", "Manto PET");
INSERT INTO produtos (nome, setor, preco, fornecedor) VALUES ("Ração Premier - Cães Adulto","Raçoes","280.00", "Premier Produtos Alimentícios");
INSERT INTO produtos (nome, setor, preco, fornecedor) VALUES ("Brinquedo Pet","Brinquedos","150.00", "BrinkaPET");
INSERT INTO produtos (nome, setor, preco, fornecedor) VALUES ("Casa Extra Grande - LUXO","Casinhas","650.00", "Ferplast");
INSERT INTO produtos (nome, setor, preco, fornecedor) VALUES ("Coleira Seresto","Antipulgas","215.00", "Bayer");
INSERT INTO produtos (nome, setor, preco, fornecedor) VALUES ("Tapete Higiênico P - pct com 20","Higiene","85.00", "Supercão");
INSERT INTO produtos (nome, setor, preco, fornecedor) VALUES ("Arranhador BigCat","Brinquedos","599.00", "São PET");
INSERT INTO produtos (nome, setor, preco, fornecedor) VALUES ("Caixa de Transporte Tam 5","Transporte","549.99", "PlastPET");

select * from produtos where preco > "500.00";
select * from produtos where preco < "500.00";

UPDATE produtos SET preco = "790.00" WHERE id = 4;

select * from produtos;