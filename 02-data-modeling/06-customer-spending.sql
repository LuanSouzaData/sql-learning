-- Calculate total spending for each customer
SELECT
    customers.customer_id,
    customers.name,
    SUM(orders.amount) AS total_spent
FROM customers
INNER JOIN orders
    ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, customers.name
ORDER BY total_spent DESC;


-- Find customers who spent more than 300
SELECT
    customers.customer_id,
    customers.name,
    SUM(orders.amount) AS total_spent
FROM customers
INNER JOIN orders
    ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, customers.name
HAVING SUM(orders.amount) > 300
ORDER BY total_spent DESC;


-- Find customers with at least two orders
SELECT
    customers.customer_id,
    customers.name,
    COUNT(orders.order_id) AS total_orders
FROM customers
INNER JOIN orders
    ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, customers.name
HAVING COUNT(orders.order_id) >= 2
ORDER BY total_orders DESC;


-- Find customers without orders
SELECT
    customers.customer_id,
    customers.name,
    COUNT(orders.order_id) AS total_orders
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, customers.name
HAVING COUNT(orders.order_id) = 0;