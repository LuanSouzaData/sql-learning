-- Select all columns from all customers
SELECT *
FROM customers;

-- Select only customer names
SELECT name
FROM customers;

-- Select customer names and emails
SELECT name, email
FROM customers;

-- Sort customers alphabetically by name
SELECT customer_id, name, email
FROM customers
ORDER BY name;

-- Sort customers by name in descending order
SELECT customer_id, name, email
FROM customers
ORDER BY name DESC;

-- Return only the first three customers
SELECT customer_id, name, email
FROM customers
ORDER BY customer_id
LIMIT 3;

SELECT DISTINCT name
FROM customers;