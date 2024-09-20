-- 3. Quais são os 5 filmes mais alugados?

SELECT f.title AS filme,
       count(f.film_id) AS qtde_alugueis
FROM public.film f
INNER JOIN public.inventory i ON f.film_id = i.inventory_id
INNER JOIN public.rental r ON i.inventory_id = r.inventory_id
GROUP BY f.title
ORDER BY count(f.film_id) DESC
LIMIT 5;