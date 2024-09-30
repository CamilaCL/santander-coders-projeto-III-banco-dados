--5. Qual é o nome de categoria de filme (category.name) que nos retorna mais dinheiro no total (payment.total)?
--Ordene sua consulta para mostrar o resultado em ordem de lucratividade, do nome de categoria mais lucrativo para o nome
--de categoria menos lucrativo e garanta que todos os nomes de categorias apareçam no resultado final, inclusive aquelas que
--não tiverem nenhuma locação associada a elas.

SELECT 
    category.name AS categoria, 
    SUM(payment.amount) AS lucratividade
FROM 
    category
LEFT JOIN 
    film_category ON category.category_id = film_category.category_id
LEFT JOIN 
    inventory ON film_category.film_id = inventory.film_id
LEFT JOIN 
    rental ON inventory.inventory_id = rental.inventory_id
LEFT JOIN 
    payment ON rental.rental_id = payment.rental_id
GROUP BY 
    category.name
ORDER BY 
    SUM(payment.amount) DESC;
