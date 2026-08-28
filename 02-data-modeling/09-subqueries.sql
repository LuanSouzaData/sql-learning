-- Find customers whose total spending is above the average
SELECT
    c.name AS customer_name,
    SUM(o.amount) AS total_spent
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.name
HAVING SUM(o.amount) > (
    SELECT
        AVG(customer_total)
    FROM (
        SELECT
            SUM(o.amount) AS customer_total
        FROM customers AS c
        INNER JOIN orders AS o
            ON c.customer_id = o.customer_id
        GROUP BY c.customer_id
    ) AS customer_totals
)
ORDER BY total_spent DESC;