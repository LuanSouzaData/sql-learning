-- Classify orders by amount
SELECT
    order_id,
    order_date,
    amount,
    CASE
        WHEN amount < 100 THEN 'Low value'
        WHEN amount BETWEEN 100 AND 300 THEN 'Medium value'
        ELSE 'High value'
    END AS order_category
FROM orders
ORDER BY
    order_date,
    order_id;


-- Classify customers based on their order activity
SELECT
    c.name AS customer_name,
    COUNT(o.order_id) AS total_orders,
    CASE
        WHEN COUNT(o.order_id) = 0 THEN 'No orders'
        WHEN COUNT(o.order_id) = 1 THEN 'One order'
        ELSE 'Multiple orders'
    END AS customer_activity
FROM customers AS c
LEFT JOIN orders AS o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.name
ORDER BY
    c.customer_id;


-- Count orders by value category
SELECT
    CASE
        WHEN amount < 100 THEN 'Low value'
        WHEN amount BETWEEN 100 AND 300 THEN 'Medium value'
        ELSE 'High value'
    END AS order_category,
    COUNT(*) AS total_orders
FROM orders
GROUP BY
    CASE
        WHEN amount < 100 THEN 'Low value'
        WHEN amount BETWEEN 100 AND 300 THEN 'Medium value'
        ELSE 'High value'
    END
ORDER BY
    total_orders DESC;


-- Count orders by value category using a CTE
WITH categorized_orders AS (
    SELECT
        order_id,
        amount,
        CASE
            WHEN amount < 100 THEN 'Low value'
            WHEN amount BETWEEN 100 AND 300 THEN 'Medium value'
            ELSE 'High value'
        END AS order_category
    FROM orders
)
SELECT
    order_category,
    COUNT(*) AS total_orders
FROM categorized_orders
GROUP BY
    order_category
ORDER BY
    total_orders DESC;