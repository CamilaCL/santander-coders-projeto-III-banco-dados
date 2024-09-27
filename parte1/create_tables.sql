

create table cliente (
	id serial primary key not null,
	nome varchar(255) not null,
	cpf varchar(11) not null unique,
	telefone varchar(11),
	email varchar(50),
	data_nascimento date
);

create table pedido (
	id serial primary key not null,
	data_hora timestamptz not null,
	id_cliente integer not null,
	foreign key (id_cliente) references cliente (id)
);

create table prato (
	id serial primary key not null,
	nome varchar(255) not null,
	descricao varchar(255),
	preco float not null
);

create table funcionario (
	id serial primary key not null,
	nome varchar(255) not null,
	cpf varchar(11) not null unique,
	cargo varchar(30) not null,
	telefone varchar(11) not null
);

create table pedido_prato (
	id serial primary key not null,
	id_pedido integer not null,
	id_prato integer not null,
	foreign key (id_pedido) references pedido (id),
	foreign key (id_prato) references prato (id)
);

create table pedido_funcionario (
	id serial primary key not null,
	id_pedido integer not null,
	id_funcionario integer not null,
	foreign key (id_pedido) references pedido (id),
	foreign key (id_funcionario) references funcionario (id)
);

create table reserva (
	id serial primary key not null,
	data_hora timestamptz not null,
	id_cliente integer not null,
	foreign key (id_cliente) references cliente (id)
);

create table mesa (
	id serial primary key not null,
	qtde_assentos integer,
	status varchar(10)
);

create table reserva_mesa (
	id serial primary key not null,
	id_reserva integer not null,
	id_mesa integer not null,
	checkin timestamptz,
	checkout timestamptz,
	foreign key (id_reserva) references reserva (id),
	foreign key (id_mesa) references mesa (id)
);

