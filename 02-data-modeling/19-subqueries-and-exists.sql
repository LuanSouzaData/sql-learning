-- Find customers with at least one order using IN
SELECT
    customer_id,
    name
FROM customers
WHERE customer_id IN (
    SELECT
        customer_id
    FROM orders
)
ORDER BY customer_id;


-- Find customers without orders using NOT IN
SELECT
    customer_id,
    name
FROM customers
WHERE customer_id NOT IN (
    SELECT
        customer_id
    FROM orders
)
ORDER BY customer_id;


-- Find customers with at least one order using EXISTS
SELECT
    c.customer_id,
    c.name
FROM customers AS c
WHERE EXISTS (
    SELECT
        1
    FROM orders AS o
    WHERE o.customer_id = c.customer_id
)
ORDER BY c.customer_id;


-- Find customers without orders using NOT EXISTS
SELECT
    c.customer_id,
    c.name
FROM customers AS c
WHERE NOT EXISTS (
    SELECT
        1
    FROM orders AS o
    WHERE o.customer_id = c.customer_id
)
ORDER BY c.customer_id;


-- Find orders above the average order amount
SELECT
    order_id,
    customer_id,
    amount
FROM orders
WHERE amount > (
    SELECT
        AVG(amount)
    FROM orders
)
ORDER BY amount DESC;


-- Find orders above each customer's average order amount
SELECT
    o.order_id,
    o.customer_id,
    o.amount
FROM orders AS o
WHERE o.amount > (
    SELECT
        AVG(o2.amount)
    FROM orders AS o2
    WHERE o2.customer_id = o.customer_id
)
ORDER BY
    o.customer_id,
    o.amount DESC;