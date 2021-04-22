CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe(
	id BIGINT(5) AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    tipo  VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE  tb_personagens(
	id BIGINT(5) AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    poder_ataque BIGINT(5),
    poder_defesa BIGINT(5),
    classe_id BIGINT(5),
   FOREIGN KEY (classe_id) REFERENCES tb_classe(id),
    PRIMARY KEY (id)
);
INSERT INTO tb_classe (nome, tipo) VALUES ("Herois","luta"),("Assassinos","RPG"),("Vikings","RPG"),("Paladinos","RPG"),("Ladrão","luta");
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, classe_id) VALUES ("Batman",5000,7,1),("Phareman",3000,2700,3),("Hamlyn",1000,1300,2),
("Swetelove",3000,2700,2),("The Venom Tongue",900,500,4),("Coringa",6000,5000,5),("Fuse Hand",5000,2500,4),("Dickory",1800,2000,2);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa > 1000 and poder_defesa < 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT * FROM tb_personagens INNER JOIN tb_classe ON tb_classe.id = tb_personagens.classe_id WHERE tb_classe.id = 2;
