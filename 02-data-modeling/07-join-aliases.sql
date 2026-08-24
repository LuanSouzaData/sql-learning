SELECT
    c.customer_id,
    c.name AS customer_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.amount) AS total_spent,
    MAX(o.amount) AS largest_order
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.name
ORDER BY total_spent DESC;

SELECT
    c.name AS customer_name,
    o.amount AS order_amount
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id;

    SELECT
    c.customer_id,
    c.name AS customer_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.amount) AS total_spent,
    MAX(o.amount) AS largest_order
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.name
ORDER BY total_spent DESC;

SELECT
    c.customer_id,
    c.name AS customer_name,
    COUNT(o.order_id) AS total_orders,
    COALESCE(SUM(o.amount), 0) AS total_spent
FROM customers AS c
LEFT JOIN orders AS o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.name
ORDER BY total_spent DESC;

SELECT
    c.customer_id,
    c.name,
    o.order_id,
    o.amount
FROM customers AS c
FULL OUTER JOIN orders AS o
    ON c.customer_id = o.customer_id;