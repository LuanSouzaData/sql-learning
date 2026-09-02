-- Calculate the running total of all orders
SELECT
    o.order_id,
    o.order_date,
    o.amount,
    SUM(o.amount) OVER (
        ORDER BY
            o.order_date,
            o.order_id
    ) AS running_total
FROM orders AS o
ORDER BY
    o.order_date,
    o.order_id;


-- Calculate the running total for each customer
SELECT
    c.name AS customer_name,
    o.order_id,
    o.order_date,
    o.amount,
    SUM(o.amount) OVER (
        PARTITION BY c.customer_id
        ORDER BY
            o.order_date,
            o.order_id
    ) AS customer_running_total
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
ORDER BY
    c.customer_id,
    o.order_date,
    o.order_id;


-- Calculate the running total using an explicit window frame
SELECT
    c.name AS customer_name,
    o.order_id,
    o.order_date,
    o.amount,
    SUM(o.amount) OVER (
        PARTITION BY c.customer_id
        ORDER BY
            o.order_date,
            o.order_id
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS customer_running_total
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
ORDER BY
    c.customer_id,
    o.order_date,
    o.order_id;