
CREATE TABLE cliente (
	id serial PRIMARY KEY NOT NULL,
	nome VARCHAR(255) NOT NULL,
	cpf VARCHAR(11) NOT NULL UNIQUE,
	telefone VARCHAR(11),
	email VARCHAR(50),
	data_nascimento DATE
);


CREATE TABLE pedido (
	id serial PRIMARY KEY NOT NULL,
	data_hora timestamptz NOT NULL,
	id_cliente INTEGER NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES cliente (id)
);


CREATE TABLE prato (
	id serial PRIMARY KEY NOT NULL,
	nome VARCHAR(255) NOT NULL,
	descricao VARCHAR(255),
	preco FLOAT NOT NULL
);


CREATE TABLE funcionario (
	id serial PRIMARY KEY NOT NULL,
	nome VARCHAR(255) NOT NULL,
	cpf VARCHAR(11) NOT NULL UNIQUE,
	cargo VARCHAR(30) NOT NULL,
	telefone VARCHAR(11) NOT NULL
);


CREATE TABLE pedido_prato (
	id serial PRIMARY KEY NOT NULL,
	id_pedido INTEGER NOT NULL,
	id_prato INTEGER NOT NULL,
	FOREIGN KEY (id_pedido) REFERENCES pedido (id),
	FOREIGN KEY (id_prato) REFERENCES prato (id)
);


CREATE TABLE pedido_funcionario (
	id serial PRIMARY KEY NOT NULL,
	id_pedido INTEGER NOT NULL,
	id_funcionario INTEGER NOT NULL,
	FOREIGN KEY (id_pedido) REFERENCES pedido (id),
	FOREIGN KEY (id_funcionario) REFERENCES funcionario (id)
);


CREATE TABLE reserva (
	id serial PRIMARY KEY NOT NULL,
	data_hora timestamptz NOT NULL,
	id_cliente INTEGER NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES cliente (id)
);


CREATE TABLE mesa (
	id serial PRIMARY KEY NOT NULL,
	qtde_assentos INTEGER,
	status VARCHAR(10)
);


CREATE TABLE reserva_mesa (
	id serial PRIMARY KEY NOT NULL,
	id_reserva INTEGER NOT NULL,
	id_mesa INTEGER NOT NULL,
	checkin timestamptz,
	checkout timestamptz,
	FOREIGN KEY (id_reserva) REFERENCES reserva (id),
	FOREIGN KEY (id_mesa) REFERENCES mesa (id)
);
