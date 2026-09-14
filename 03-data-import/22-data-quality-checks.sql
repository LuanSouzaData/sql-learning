-- Check for NULL or empty order IDs
SELECT *
FROM staging_sales
WHERE order_id IS NULL
   OR TRIM(order_id) = '';


-- Check for NULL or empty customer IDs
SELECT *
FROM staging_sales
WHERE customer_id IS NULL
   OR TRIM(customer_id) = '';


-- Check for invalid dates
SELECT *
FROM staging_sales
WHERE order_date IS NULL
   OR TRIM(order_date) = '';


-- Check for invalid amounts
SELECT *
FROM staging_sales
WHERE amount IS NULL
   OR TRIM(amount) = '';


-- Check for duplicate order IDs
SELECT
    order_id,
    COUNT(*) AS occurrences
FROM staging_sales
GROUP BY order_id
HAVING COUNT(*) > 1;