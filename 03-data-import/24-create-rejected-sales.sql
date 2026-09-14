-- Drop the rejected sales table if it already exists
DROP TABLE IF EXISTS rejected_sales;


-- Create a table for rejected records
CREATE TABLE rejected_sales (
    raw_order_id TEXT,
    raw_customer_id TEXT,
    raw_order_date TEXT,
    raw_amount TEXT,
    product TEXT,
    rejection_reason TEXT NOT NULL
);