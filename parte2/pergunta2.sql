-- 2. Quais foram os filmes alugados entre os dias 1 e 15 de março de 2006 na loja 1 (store.id = 1)?

SELECT f.title AS filme
FROM public.film f
INNER JOIN public.inventory i ON f.film_id = i.inventory_id
INNER JOIN public.rental r ON i.inventory_id = r.inventory_id
INNER JOIN public.staff sf ON r.staff_id = sf.staff_id
INNER JOIN public.store se ON se.manager_staff_id = sf.staff_id
WHERE r.rental_date BETWEEN '2006-03-01 00:00:00' AND '2006-03-15 23:59:59'
  AND se.store_id = 1;