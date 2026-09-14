-- Transform staging data safely

SELECT
    CASE
        WHEN order_id ~ '^[0-9]+$'
        THEN order_id::INTEGER
        ELSE NULL
    END AS order_id,

    CASE
        WHEN customer_id ~ '^[0-9]+$'
        THEN customer_id::INTEGER
        ELSE NULL
    END AS customer_id,

    CASE
        WHEN order_date ~ '^\d{4}-\d{2}-\d{2}$'
        THEN order_date::DATE
        ELSE NULL
    END AS order_date,

    CASE
        WHEN amount ~ '^[0-9]+(\.[0-9]+)?$'
        THEN amount::NUMERIC(10, 2)
        ELSE NULL
    END AS amount,

    product

FROM staging_sales;