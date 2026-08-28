-- Find customers whose total spending is above the average
WITH customer_totals AS (
    SELECT
        c.customer_id,
        c.name AS customer_name,
        SUM(o.amount) AS total_spent
    FROM customers AS c
    INNER JOIN orders AS o
        ON c.customer_id = o.customer_id
    GROUP BY
        c.customer_id,
        c.name
)
SELECT
    customer_name,
    total_spent
FROM customer_totals
WHERE total_spent > (
    SELECT AVG(total_spent)
    FROM customer_totals
)
ORDER BY total_spent DESC;