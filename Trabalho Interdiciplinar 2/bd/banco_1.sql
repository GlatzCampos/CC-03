SELECT * FROM usuario;
SELECT * FROM produto;

CREATE DOMAIN vc VARCHAR(100);

CREATE TABLE usuario (
	id_user INTEGER NOT NULL,
	nome_user vc,
	email_user vc,
	senha_user vc,
	PRIMARY KEY(id_user)
);

INSERT INTO usuario VALUES (1,'Gabriel Glatz Campos',
						'gabrielglatzc@gmail.com',
						'senhagabriel@1');
						
INSERT INTO usuario VALUES (2,'Mateus Nunes',
						'mateusnunes@gmail.com',
						'senhanunes@02');
						
INSERT INTO usuario VALUES (3,'Pedro Nunes',
						'pedronunes@gmail.com',
						'senhapedro@3');
						
INSERT INTO usuario VALUES (4,'Matheus Japa',
						'matheusjapa@gmail.com',
						'senhajapa@4');
						
INSERT INTO usuario VALUES (5,'Berth',
						'berth@gmail.com',
						'senhaberth@5');


CREATE TABLE produto (
	id_prod INTEGER NOT NULL,
	nome_prod vc,
	quant_prod INTEGER,
	preco_prod DECIMAL(10,2),
	imagem_prod BYTEA,
	user_id INTEGER,
	cate_id INTEGER,
	PRIMARY KEY (id_prod),
	FOREIGN KEY (user_id) REFERENCES usuario (id_user),
	FOREIGN KEY (cate_id) REFERENCES categoria (id_cate)
);

CREATE TABLE categoria(
	id_cate INTEGER NOT NULL,
	nome_cate vc,
	PRIMARY KEY (id_cate)
);