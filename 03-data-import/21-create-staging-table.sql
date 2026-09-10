-- Drop the staging table if it already exists
DROP TABLE IF EXISTS staging_sales;

-- Create a staging table for raw CSV data
CREATE TABLE staging_sales (
    order_id TEXT,
    customer_id TEXT,
    order_date TEXT,
    amount TEXT,
    product TEXT
);


-- Drop the final sales table if it already exists
DROP TABLE IF EXISTS sales;

-- Create the final sales table
CREATE TABLE sales (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    order_date DATE NOT NULL,
    amount NUMERIC(10, 2) NOT NULL,
    product TEXT NOT NULL
);