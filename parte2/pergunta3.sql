-- 3. Qual a quantidade de vezes que cada filme foi alugado?

SELECT f.title AS filme,
       count(f.film_id) AS qtde_alugueis
FROM public.film f
INNER JOIN public.inventory i ON f.film_id = i.film_id
INNER JOIN public.rental r ON i.inventory_id = r.inventory_id
GROUP BY f.title
ORDER BY count(f.film_id) DESC;




