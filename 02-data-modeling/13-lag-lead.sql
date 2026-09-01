-- Show the previous order amount for each customer
SELECT
    c.name AS customer_name,
    o.order_id,
    o.order_date,
    o.amount,
    LAG(o.amount) OVER (
        PARTITION BY c.customer_id
        ORDER BY
            o.order_date,
            o.order_id
    ) AS previous_order_amount
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
ORDER BY
    c.customer_id,
    o.order_date,
    o.order_id;


-- Show the next order amount for each customer
SELECT
    c.name AS customer_name,
    o.order_id,
    o.order_date,
    o.amount,
    LEAD(o.amount) OVER (
        PARTITION BY c.customer_id
        ORDER BY
            o.order_date,
            o.order_id
    ) AS next_order_amount
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
ORDER BY
    c.customer_id,
    o.order_date,
    o.order_id;


-- Compare each order with the previous order
WITH customer_orders AS (
    SELECT
        c.customer_id,
        c.name AS customer_name,
        o.order_id,
        o.order_date,
        o.amount,
        LAG(o.amount) OVER (
            PARTITION BY c.customer_id
            ORDER BY
                o.order_date,
                o.order_id
        ) AS previous_order_amount
    FROM customers AS c
    INNER JOIN orders AS o
        ON c.customer_id = o.customer_id
)
SELECT
    customer_name,
    order_id,
    order_date,
    amount AS current_order_amount,
    previous_order_amount,
    amount - previous_order_amount AS amount_difference
FROM customer_orders
ORDER BY
    customer_id,
    order_date,
    order_id;