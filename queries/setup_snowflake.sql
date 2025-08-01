-- Create DWH 
CREATE OR REPLACE WAREHOUSE finance_wh
WITH WAREHOUSE_SIZE = 'XSMALL'
AUTO_SUSPEND = 60 
AUTO_RESUME = TRUE
INITIALLY_SUSPENDED = TRUE;

-- Notes 
-- AUTO_SUSPEND to suspend wh if not use
-- AUTO_RESUME to on wh when use auto 


-- Create db and schema
CREATE OR REPLACE DATABASE finance_db;
CREATE OR REPLACE SCHEMA finance_raw;

-- Create Tables [raw]

CREATE OR REPLACE TABLE finance_raw.customers(
    id INT PRIMARY KEY,
    customer_name VARCHAR,
    email VARCHAR,
    country VARCHAR
);

CREATE OR REPLACE TABLE finance_raw.order_items(
    id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price INT
);

CREATE OR REPLACE TABLE finance_raw.orders(
    id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount INT,
    status VARCHAR
);


CREATE OR REPLACE TABLE finance_raw.products(
    id int PRIMARY KEY,
    name varchar,
    category varchar,
    price INT
);

