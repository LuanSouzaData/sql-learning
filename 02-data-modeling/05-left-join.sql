-- Return all customers, including customers without orders
SELECT
    customers.name,
    orders.order_id,
    orders.amount
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id;