-- 2. Quais foram os filmes alugados entre os dias 1 de fevereiro e 15 de março de 2006 na loja 1 (store.id = 1)?

SELECT DISTINCT f.title AS filme
FROM public.rental r
INNER JOIN public.inventory i on i.inventory_id = r.inventory_id
INNER JOIN public.film f ON f.film_id = i.film_id
WHERE r.rental_date BETWEEN '2006-02-01 00:00:00' AND '2006-03-15 23:59:59'
  AND i.store_id = 1
ORDER BY f.title;