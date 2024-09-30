
SELECT id,
       nome,
       cpf,
       telefone,
       email,
       data_nascimento
FROM cliente;


SELECT id,
       nome,
       cpf,
       cargo,
       telefone
FROM funcionario;


SELECT id,
       data_hora,
       id_cliente
FROM pedido;


SELECT id,
       nome,
       descricao,
       preco
FROM prato;


SELECT id,
       data_hora,
       id_cliente
FROM reserva;


SELECT id,
       qtde_assentos,
       status
FROM mesa;


SELECT id,
       id_pedido,
       id_funcionario
FROM pedido_funcionario;


SELECT id,
       id_pedido,
       id_prato
FROM pedido_prato;


SELECT id,
       id_reserva,
       id_mesa,
       checkin,
       checkout
FROM reserva_mesa;


-- retorna todas as mesas em que o checkout é nulo
SELECT c.nome,
       r.data_hora AS data_reserva,
       rm.id_mesa AS mesa,
       rm.checkin,
       m.status
FROM reserva r
INNER JOIN cliente c ON r.id_cliente = c.id
LEFT JOIN reserva_mesa rm ON rm.id_reserva = r.id
LEFT JOIN mesa m ON rm.id_mesa = m.id
WHERE rm.checkout IS NULL;


-- retorna todas as mesas reservadas a partir de 04/10/2023
SELECT m.id AS mesa,
       r.data_hora AS data_reserva
FROM mesa m
LEFT JOIN reserva_mesa rm ON rm.id_mesa = m.id
LEFT JOIN reserva r ON r.id = rm.id_reserva
WHERE r.data_hora > '2023-10-04 00:00:00';


-- retorna o histórico de pedidos
SELECT pe.id,
       pr.nome AS prato,
       pr.preco,
       c.nome AS cliente
FROM pedido pe
LEFT JOIN pedido_prato pp ON pp.id_pedido = pe.id
LEFT JOIN prato pr ON pr.id = pp.id_prato
LEFT JOIN cliente c ON c.id = pe.id_cliente;


-- retorna a quantidade de pedidos por prato
SELECT p.nome,
       count(pp.id_pedido) AS qtde_pedidos_por_prato
FROM pedido_prato pp
INNER JOIN prato p ON pp.id_prato = p.id
GROUP BY p.nome
ORDER BY qtde_pedidos_por_prato DESC,
         p.nome;


-- retorna a quantidade de mesas por status
SELECT status,
       count(id) AS qtde_mesas
FROM mesa
GROUP BY status;


-- retorna a quantidade totald e assentos do restaurante
SELECT sum(qtde_assentos) AS qtde_total_assentos
FROM mesa;
