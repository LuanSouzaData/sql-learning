-- Find a customer by name
SELECT customer_id, name, email
FROM customers
WHERE name = 'Alice Johnson';


-- Find customers with an ID greater than 2
SELECT customer_id, name, email
FROM customers
WHERE customer_id > 2;


-- Find customers within an ID range
SELECT customer_id, name, email
FROM customers
WHERE customer_id >= 2
  AND customer_id <= 4;


-- Find specific customers using IN
SELECT customer_id, name, email
FROM customers
WHERE customer_id IN (1, 3, 5);


-- Find customers within a range using BETWEEN
SELECT customer_id, name, email
FROM customers
WHERE customer_id BETWEEN 2 AND 4;


-- Find customers whose name starts with A
SELECT customer_id, name, email
FROM customers
WHERE name LIKE 'A%';


-- Find customers whose name contains "li"
SELECT customer_id, name, email
FROM customers
WHERE name LIKE '%li%';

-- Find customers without an email
SELECT customer_id, name, email
FROM customers
WHERE email IS NULL;


-- Find customers with an email
SELECT customer_id, name, email
FROM customers
WHERE email IS NOT NULL;