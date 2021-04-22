CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id BIGINT(5) AUTO_INCREMENT,
    tamanho  VARCHAR(30) NOT NULL,
    massa VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE  tb_pizza(
	id BIGINT(5) AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    sabor VARCHAR(30) NOT NULL,
    preco DECIMAL(10,2),
    tamanho_id BIGINT(5),
    FOREIGN KEY (tamanho_id) REFERENCES tb_categoria(id),
    PRIMARY KEY (id)
);
INSERT INTO tb_categoria (tamanho, massa) VALUES ("grande","massa padrão"),("pequena","massa padrão"),("grande","massa integral"),("pequena","massa integral");
INSERT INTO tb_pizza (nome, sabor, preco, tamanho_id) VALUES ("Dois queijos","Mussarela e Catupiry",35.00,1), ("Troiana","Lombo, Catupiry e Bacon",46.00,1),
("Calacatu","Calabresa e Catupiry",37.00,1),("Dois queijos","Mussarela e Catupiry",27.00,2), ("Troiana","Lombo, Catupiry e Bacon",40.00,2),
("Calacatu","Calabresa e Catupiry",32.00,2),("Dois queijos","Mussarela e Catupiry",37.00,3), ("Troiana","Lombo, Catupiry e Bacon",48.00,3);


SELECT * FROM tb_pizza WHERE preco > 45;
SELECT * FROM tb_pizza WHERE preco > 29 and preco < 60;

SELECT * FROM tb_pizza WHERE nome LIKE '%C%';

SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.tamanho_id WHERE tb_categoria.id = 1;
