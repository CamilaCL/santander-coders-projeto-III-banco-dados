-- 4. Para cada funcionário (staff.staff_id), qual é o valor total retornado em locações (payment.amount) e qual é a quantidade total de locações (rental.rental_id)?


-- Existem 1452 locações que estão associadas a um funcionário, mas não há um pagamento associado. 
--A query abaixo conta todas as locações independente de haver pagamento associado
WITH valor AS
  (SELECT s.staff_id,
          concat(s.first_name, ' ', s.last_name) AS funcionario,
          sum(p.amount) AS valor_total_locacoes
   FROM public.staff s
   INNER JOIN public.payment p ON p.staff_id = s.staff_id
   GROUP BY 1,
            2),
     qtde AS
  (SELECT s.staff_id,
          concat(s.first_name, ' ', s.last_name) AS funcionario,
          count(r.rental_id) AS qtde_total_locacoes
   FROM public.staff s
   INNER JOIN public.rental r ON r.staff_id = s.staff_id
   GROUP BY 1,
            2)
SELECT v.funcionario,
       v.valor_total_locacoes,
       q.qtde_total_locacoes
FROM valor v
INNER JOIN qtde q ON v.staff_id = q.staff_id;


-- A query abaixo conta apenas as locações em que há um pagamento associado
SELECT concat(s.first_name, ' ', s.last_name) AS funcionario,
       sum(p.amount) AS valor_total_locacoes,
       count(r.rental_id) AS qtde_total_locacoes
FROM public.payment p
INNER JOIN public.rental r ON r.rental_id = p.rental_id
INNER JOIN public.staff s ON s.staff_id = p.staff_id
GROUP BY 1;









