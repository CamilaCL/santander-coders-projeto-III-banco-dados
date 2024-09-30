--2. Quais foram os filmes alugados entre os dias 1 de fevereiro e 15 de março de 2006 na loja 1 (store.id = 1).
SELECT 
    film.title AS filme, 
    rental.rental_date AS data
FROM 
    rental
inner JOIN 
    inventory ON rental.inventory_id = inventory.inventory_id
inner JOIN 
    film  ON inventory.film_id = film.film_id
WHERE 
    rental.rental_date BETWEEN '2006-02-01 00:00:00' AND '2006-03-15 23:59:59'
    AND inventory.store_id = 1;