--4. Para cada funcionário (staff.staff_id), qual é o valor total retornado em locações (payment.amount) e qual é a
--quantidade total de locações (rental.rental_id)?

SELECT 
    staff.staff_id AS Funcionario, 
    SUM(payment.amount) AS Valor_Total_Retornado, 
    COUNT(rental.rental_id) AS Quantidade_Total_Locacoes
FROM 
    staff
JOIN 
    rental ON staff.staff_id = rental.staff_id
JOIN 
    payment ON rental.rental_id = payment.rental_id
GROUP BY 
    staff.staff_id;
   






