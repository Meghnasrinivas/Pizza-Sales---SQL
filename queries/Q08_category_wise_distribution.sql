-- Join relevant tables to find the 
-- category-wise distribution of pizzas.

SELECT 
    pizza_types.category AS category,
    COUNT(order_details.order_id) AS pizzas
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY category;