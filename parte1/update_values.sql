
-- atualizando o horário do checkout da reserva 6
UPDATE reserva_mesa
SET checkout = '2023-10-04 20:43:00.000 -0300'
WHERE id = 6;


-- atualizando o status da mesa 8, que estava com a reserva 6, de Ocupado para Livre
UPDATE mesa
SET status = 'Livre'
WHERE id = 8;


-- atualizando o funcionário do pedido 7 de cozinheiro para Garçom
UPDATE pedido_funcionario
SET id_funcionario = 4
WHERE id = 7;

