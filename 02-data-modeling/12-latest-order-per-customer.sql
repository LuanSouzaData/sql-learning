-- Find the most recent order for each customer
WITH ranked_orders AS (
    SELECT
        c.customer_id,
        c.name AS customer_name,
        o.order_id,
        o.order_date,
        o.amount,
        ROW_NUMBER() OVER (
            PARTITION BY c.customer_id
            ORDER BY
                o.order_date DESC,
                o.order_id DESC
        ) AS order_rank
    FROM customers AS c
    INNER JOIN orders AS o
        ON c.customer_id = o.customer_id
)
SELECT
    customer_name,
    order_id,
    order_date,
    amount
FROM ranked_orders
WHERE order_rank = 1
ORDER BY customer_name;