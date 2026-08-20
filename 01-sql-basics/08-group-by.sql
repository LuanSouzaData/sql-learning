-- Count customers by city
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city;


-- Count customers by city and sort by customer count
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city
ORDER BY total_customers DESC;


-- Return cities with at least two customers
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city
HAVING COUNT(*) >= 2;