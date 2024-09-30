--3. Qual a quantidade de vezes que cada filme foi alugado?
SELECT 
    film.title AS filme, 
    COUNT(rental.rental_id) AS Quantidade_Alugado
FROM 
    rental
inner JOIN 
    inventory ON rental.inventory_id = inventory.inventory_id
inner JOIN 
    film ON inventory.film_id = film.film_id
GROUP BY 
    film.title
ORDER BY 
    Quantidade_Alugado ASC;
