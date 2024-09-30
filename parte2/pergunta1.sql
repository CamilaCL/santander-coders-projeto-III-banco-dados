-- 1. Quais são os filmes (film.title), suas respectivas categorias (category.name)e idioma (language.name)?

SELECT f.title AS filme,
       c."name" AS categoria,
       l."name" AS idioma
FROM public.film f
INNER JOIN public.film_category fc ON f.film_id = fc.film_id
INNER JOIN public.category c ON fc.category_id = c.category_id
INNER JOIN public."language" l ON f.language_id = l.language_id;