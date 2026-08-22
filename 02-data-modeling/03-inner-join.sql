-- Match customers with their orders
SELECT
    customers.name,
    orders.order_id,
    orders.order_date,
    orders.amount
FROM customers
INNER JOIN orders
    ON customers.customer_id = orders.customer_id;