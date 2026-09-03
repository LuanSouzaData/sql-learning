-- Calculate the moving average using the current and previous order
SELECT
    o.order_id,
    o.order_date,
    o.amount,
    AVG(o.amount) OVER (
        ORDER BY
            o.order_date,
            o.order_id
        ROWS BETWEEN 1 PRECEDING AND CURRENT ROW
    ) AS moving_average
FROM orders AS o
ORDER BY
    o.order_date,
    o.order_id;
    -- Calculate the moving average using the current and previous order
SELECT
    o.order_id,
    o.order_date,
    o.amount,
    AVG(o.amount) OVER (
        ORDER BY
            o.order_date,
            o.order_id
        ROWS BETWEEN 1 PRECEDING AND CURRENT ROW
    ) AS moving_average
FROM orders AS o
ORDER BY
    o.order_date,
    o.order_id;


-- Calculate the moving average for each customer
SELECT
    c.name AS customer_name,
    o.order_id,
    o.order_date,
    o.amount,
    AVG(o.amount) OVER (
        PARTITION BY c.customer_id
        ORDER BY
            o.order_date,
            o.order_id
        ROWS BETWEEN 1 PRECEDING AND CURRENT ROW
    ) AS customer_moving_average
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
ORDER BY
    c.customer_id,
    o.order_date,
    o.order_id;


-- Calculate the moving average using the current and two previous orders
SELECT
    c.name AS customer_name,
    o.order_id,
    o.order_date,
    o.amount,
    AVG(o.amount) OVER (
        PARTITION BY c.customer_id
        ORDER BY
            o.order_date,
            o.order_id
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS three_order_moving_average
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
ORDER BY
    c.customer_id,
    o.order_date,
    o.order_id;