
INSERT INTO cliente (nome, cpf, telefone, email, data_nascimento)
VALUES ('Ana Silva', '12345678901', '11987654321', 'ana.silva@example.com', '1990-01-15'),
       ('Bruno Souza', '23456789012', '21987654321', 'bruno.souza@example.com', '1985-05-20'),
       ('Carlos Pereira', '34567890123', '31987654321', 'carlos.pereira@example.com', '1992-03-10'),
       ('Daniela Costa', '45678901234', '41987654321', 'daniela.costa@example.com', '1988-07-25'),
       ('Eduardo Lima', '56789012345', '51987654321', 'eduardo.lima@example.com', '1995-11-30'),
       ('Fernanda Alves', '67890123456', '61987654321', 'fernanda.alves@example.com', '1991-09-05'),
       ('Gabriel Martins', '78901234567', '71987654321', 'gabriel.martins@example.com', '1987-12-12'),
       ('Helena Rodrigues', '89012345678', '81987654321', 'helena.rodrigues@example.com', '1993-04-18'),
       ('Igor Fernandes', '90123456789', '91987654321', 'igor.fernandes@example.com', '1989-06-22'),
       ('Juliana Oliveira', '01234567890', '11987654322', 'juliana.oliveira@example.com', '1994-08-14');


INSERT INTO prato (nome, descricao, preco)
VALUES ('Spaghetti Carbonara', 'Massa com molho de ovos, queijo, pancetta e pimenta preta', 29.90),
       ('Risotto de Cogumelos', 'Arroz cremoso com cogumelos frescos e parmesão', 34.50),
       ('Frango à Parmegiana', 'Peito de frango empanado com molho de tomate e queijo', 27.00),
       ('Salmão Grelhado', 'Filé de salmão grelhado com ervas e limão', 42.00),
       ('Pizza Margherita', 'Pizza com molho de tomate, mussarela e manjericão', 25.00),
       ('Lasanha Bolonhesa', 'Massa em camadas com molho bolonhesa e queijo', 31.50),
       ('Bife à Milanesa', 'Bife empanado servido com batatas fritas', 28.00),
       ('Camarão ao Alho e Óleo', 'Camarões salteados com alho e óleo', 39.90),
       ('Salada Caesar', 'Salada com alface, croutons, parmesão e molho Caesar', 22.50),
       ('Tiramisu', 'Sobremesa italiana com camadas de biscoito, café e mascarpone', 18.00);


INSERT INTO funcionario (nome, cpf, cargo, telefone)
VALUES ('Mariana Silva', '12345678901', 'Garçom', '11987654321'),
       ('Carlos Souza', '23456789012', 'Cozinheiro', '21987654321'),
       ('Fernanda Lima', '34567890123', 'Recepcionista', '31987654321'),
       ('João Pereira', '45678901234', 'Garçom', '41987654321'),
       ('Ana Costa', '56789012345', 'Garçom', '51987654321'),
       ('Pedro Martins', '67890123456', 'Cozinheiro', '61987654321'),
       ('Juliana Alves', '78901234567', 'Recepcionista', '71987654321'),
       ('Ricardo Fernandes', '89012345678', 'Garçom', '81987654321'),
       ('Patrícia Oliveira', '90123456789', 'Gerente', '91987654321'),
       ('Lucas Rodrigues', '01234567890', 'Cozinheiro', '11987654322');


INSERT INTO pedido (data_hora, id_cliente)
VALUES ('2023-10-01 12:30:00', (SELECT id FROM cliente WHERE nome = 'Ana Silva')),
       ('2023-10-02 13:45:00', (SELECT id FROM cliente WHERE nome = 'Bruno Souza')),
       ('2023-10-03 19:00:00', (SELECT id FROM cliente WHERE nome = 'Carlos Pereira')),
       ('2023-10-03 19:20:00', (SELECT id FROM cliente WHERE nome = 'Daniela Costa')),
       ('2023-10-04 20:30:00', (SELECT id FROM cliente WHERE nome = 'Eduardo Lima')),
       ('2023-10-04 19:45:00', (SELECT id FROM cliente WHERE nome = 'Fernanda Alves')),
       ('2023-10-04 20:40:00', (SELECT id FROM cliente WHERE nome = 'Gabriel Martins')),
       ('2023-10-04 19:15:00', (SELECT id FROM cliente WHERE nome = 'Helena Rodrigues')),
       ('2023-10-05 20:30:00', (SELECT id FROM cliente WHERE nome = 'Igor Fernandes')),
       ('2023-10-05 21:45:00', (SELECT id FROM cliente WHERE nome = 'Juliana Oliveira'));


INSERT INTO pedido_prato (id_pedido, id_prato)
VALUES (1, 6),
       (2, 8),
       (3, 6),
       (4, 2),
       (5, 9),
       (6, 1),
       (7, 1),
       (8, 3),
       (9, 7),
       (10, 3);


INSERT INTO pedido_funcionario (id_pedido, id_funcionario)
VALUES (1, 2),
       (2, 8),
       (3, 3),
       (4, 10),
       (5, 1),
       (6, 9),
       (7, 6),
       (8, 10),
       (9, 4),
       (10, 5);


INSERT INTO reserva (data_hora, id_cliente)
VALUES ('2023-10-01 12:00:00', (SELECT id FROM cliente WHERE nome = 'Ana Silva')),
       ('2023-10-02 13:30:00', (SELECT id FROM cliente WHERE nome = 'Bruno Souza')),
       ('2023-10-03 18:30:00', (SELECT id FROM cliente WHERE nome = 'Carlos Pereira')),
       ('2023-10-03 19:00:00', (SELECT id FROM cliente WHERE nome = 'Daniela Costa')),
       ('2023-10-04 20:00:00', (SELECT id FROM cliente WHERE nome = 'Eduardo Lima')),
       ('2023-10-04 19:30:00', (SELECT id FROM cliente WHERE nome = 'Fernanda Alves')),
       ('2023-10-04 20:30:00', (SELECT id FROM cliente WHERE nome = 'Gabriel Martins')),
       ('2023-10-04 19:00:00', (SELECT id FROM cliente WHERE nome = 'Helena Rodrigues')),
       ('2023-10-05 20:00:00', (SELECT id FROM cliente WHERE nome = 'Igor Fernandes')),
       ('2023-10-05 21:30:00', (SELECT id FROM cliente WHERE nome = 'Juliana Oliveira'));


INSERT INTO mesa (qtde_assentos, status)
VALUES (4, 'Livre'),
       (2, 'Ocupada'),
       (6, 'Ocupada'),
       (4, 'Livre'),
       (4, 'Ocupada'),
       (2, 'Livre'),
       (6, 'Livre'),
       (4, 'Ocupada'),
       (4, 'Livre'),
       (2, 'Livre');


INSERT INTO reserva_mesa (id_reserva, id_mesa, checkin, checkout)
VALUES (1, 4, '2023-10-01 12:07:00', '2023-10-01 13:10:00'),
       (2, 6, '2023-10-02 13:42:00', '2023-10-02 14:30:00'),
       (3, 1, '2023-10-03 18:34:00', '2023-10-03 20:06:00'),
       (4, 10, '2023-10-03 19:02:00', '2023-10-03 20:14:00'),
       (5, 5, '2023-10-04 20:10:00', NULL),
       (6, 8, '2023-10-04 19:38:00', NULL),
       (7, 2, '2023-10-04 20:36:00', NULL),
       (8, 3, '2023-10-04 19:04:00', NULL),
       (9, 9, NULL, NULL),
       (10, 7, NULL, NULL);

