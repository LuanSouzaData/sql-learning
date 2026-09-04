-- Analyze customer orders using window functions
SELECT
    c.name AS customer_name,
    o.order_id,
    o.order_date,
    o.amount,

    ROW_NUMBER() OVER (
        PARTITION BY c.customer_id
        ORDER BY
            o.order_date,
            o.order_id
    ) AS order_number,

    LAG(o.amount) OVER (
        PARTITION BY c.customer_id
        ORDER BY
            o.order_date,
            o.order_id
    ) AS previous_order_amount,

    LEAD(o.amount) OVER (
        PARTITION BY c.customer_id
        ORDER BY
            o.order_date,
            o.order_id
    ) AS next_order_amount,

    SUM(o.amount) OVER (
        PARTITION BY c.customer_id
        ORDER BY
            o.order_date,
            o.order_id
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_total,

    AVG(o.amount) OVER (
        PARTITION BY c.customer_id
        ORDER BY
            o.order_date,
            o.order_id
        ROWS BETWEEN 1 PRECEDING AND CURRENT ROW
    ) AS moving_average

FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id

ORDER BY
    c.customer_id,
    o.order_date,
    o.order_id;


-- Analyze customer orders using a reusable window definition
SELECT
    c.name AS customer_name,
    o.order_id,
    o.order_date,
    o.amount,

    ROW_NUMBER() OVER customer_order_window AS order_number,

    LAG(o.amount) OVER customer_order_window
        AS previous_order_amount,

    LEAD(o.amount) OVER customer_order_window
        AS next_order_amount,

    SUM(o.amount) OVER (
        customer_order_window
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_total,

    AVG(o.amount) OVER (
        customer_order_window
        ROWS BETWEEN 1 PRECEDING AND CURRENT ROW
    ) AS moving_average

FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id

WINDOW customer_order_window AS (
    PARTITION BY c.customer_id
    ORDER BY
        o.order_date,
        o.order_id
)

ORDER BY
    c.customer_id,
    o.order_date,
    o.order_id;