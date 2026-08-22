-- Delete a customer by ID
DELETE FROM customers
WHERE customer_id = 5
RETURNING customer_id, name, email, city;