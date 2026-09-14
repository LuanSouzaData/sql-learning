-- Identify every duplicated order ID
WITH duplicated_sales AS (
    SELECT
        order_id,
        customer_id,
        order_date,
        amount,
        product,
        ROW_NUMBER() OVER (
            PARTITION BY order_id
            ORDER BY order_id
        ) AS duplicate_row_number,
        COUNT(*) OVER (
            PARTITION BY order_id
        ) AS order_id_count
    FROM staging_sales
)
SELECT *
FROM duplicated_sales
WHERE order_id_count > 1;