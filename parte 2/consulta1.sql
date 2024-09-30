--1. Quais são os filmes (film.title), suas respectivas categorias (category.name)e idioma (language.name)?

SELECT 
    film.title AS filme, 
    category.name AS categoria, 
    language.name AS idioma
FROM 
    film
inner JOIN 
    film_category ON film.film_id = film_category.film_id
inner JOIN 
    category ON film_category.category_id = category.category_id
inner JOIN 
    language ON film.language_id = language.language_id;
