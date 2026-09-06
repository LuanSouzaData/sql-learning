-- Combine customers with and without orders using UNION
SELECT
    c.customer_id,
    c.name AS customer_name
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id

UNION

SELECT
    c.customer_id,
    c.name AS customer_name
FROM customers AS c
LEFT JOIN orders AS o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL

ORDER BY customer_id;


-- Combine customers with and without orders using UNION ALL
SELECT
    c.customer_id,
    c.name AS customer_name
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id

UNION ALL

SELECT
    c.customer_id,
    c.name AS customer_name
FROM customers AS c
LEFT JOIN orders AS o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL

ORDER BY customer_id;


-- Combine low and high value orders
SELECT
    order_id,
    customer_id,
    amount,
    'Low value' AS order_category
FROM orders
WHERE amount < 100

UNION ALL

SELECT
    order_id,
    customer_id,
    amount,
    'High value' AS order_category
FROM orders
WHERE amount >= 100

ORDER BY order_id;


-- Combine order records with customers without orders
SELECT
    order_id,
    customer_id,
    amount,
    'Order' AS record_type
FROM orders

UNION ALL

SELECT
    NULL AS order_id,
    c.customer_id,
    NULL AS amount,
    'Customer without orders' AS record_type
FROM customers AS c
WHERE c.customer_id NOT IN (
    SELECT customer_id
    FROM orders
)

ORDER BY customer_id;