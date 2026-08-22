-- Update a customer's city
UPDATE customers
SET city = 'Curitiba'
WHERE customer_id = 4
RETURNING customer_id, name, city;