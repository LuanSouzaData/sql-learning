-- Calculate the total amount spent by each customer without grouping rows
SELECT
    c.name AS customer_name,
    o.order_id,
    o.amount,
    SUM(o.amount) OVER (
        PARTITION BY c.customer_id
    ) AS customer_total
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
ORDER BY
    c.customer_id,
    o.order_id;


-- Number each order within a customer
SELECT
    c.name AS customer_name,
    o.order_id,
    o.order_date,
    o.amount,
    ROW_NUMBER() OVER (
        PARTITION BY c.customer_id
        ORDER BY o.order_date
    ) AS order_number
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
ORDER BY
    c.customer_id,
    order_number;


-- Rank customers by total spending
SELECT
    customer_name,
    total_spent,
    RANK() OVER (
        ORDER BY total_spent DESC
    ) AS spending_rank
FROM (
    SELECT
        c.name AS customer_name,
        SUM(o.amount) AS total_spent
    FROM customers AS c
    INNER JOIN orders AS o
        ON c.customer_id = o.customer_id
    GROUP BY
        c.customer_id,
        c.name
) AS customer_totals
ORDER BY spending_rank;


-- Rank customers by total spending without skipping positions
SELECT
    customer_name,
    total_spent,
    DENSE_RANK() OVER (
        ORDER BY total_spent DESC
    ) AS spending_rank
FROM (
    SELECT
        c.name AS customer_name,
        SUM(o.amount) AS total_spent
    FROM customers AS c
    INNER JOIN orders AS o
        ON c.customer_id = o.customer_id
    GROUP BY
        c.customer_id,
        c.name
) AS customer_totals
ORDER BY spending_rank;