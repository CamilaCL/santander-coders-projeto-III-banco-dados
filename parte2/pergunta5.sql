-- 5. Qual é o nome de categoria de filme (category.name) que nos retorna mais dinheiro no total (payment.total)? Ordene sua consulta para mostrar o resultado em ordem de lucratividade, do nome de categoria mais lucrativo para o nome de categoria menos lucrativo e garanta que todos os nomes de categorias apareçam no resultado final, inclusive aquelas que não tiverem nenhuma locação associada a elas.

SELECT c."name" AS categoria,
       sum(p.amount) AS lucratividade
FROM public.film f
INNER JOIN public.film_category fc ON f.film_id = fc.film_id
INNER JOIN public.category c ON fc.category_id = c.category_id
LEFT JOIN public.inventory i ON f.film_id = i.inventory_id
LEFT JOIN public.rental r ON i.inventory_id = r.inventory_id
LEFT JOIN public.payment p ON r.rental_id = p.rental_id
GROUP BY c."name"
ORDER BY sum(p.amount) DESC