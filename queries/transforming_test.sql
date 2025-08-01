-- Transforming table 1 'customers'
SELECT * FROM finance_db.finance_raw.customers;

-- check pk is unique and not null
SELECT id, COUNT(*)
FROM finance_db.finance_raw.customers
GROUP BY id 
HAVING count(*) > 1 OR id IS NULL;

-- New Query for table with [renaming cols]
SELECT 
    id AS customer_id,
    customer_name,
    email AS customer_mail,
    country AS customer_country
FROM finance_db.finance_raw.customers;


-- Transforming table 2 'orders'
SELECT * FROM finance_db.finance_raw.orders;

-- check pk is unique and not null
SELECT id, COUNT(*)
FROM finance_db.finance_raw.orders
GROUP BY id 
HAVING count(*) > 1 OR id IS NULL;

-- New Query for table with [renaming cols]
SELECT 
    id AS order_id,
    customer_id,
    order_date,
    total_amount,
    status
FROM finance_db.finance_raw.orders;


-- Transforming table 3 'order_items'
SELECT * FROM finance_db.finance_raw.order_items; 

-- check pk is unique and not null
SELECT id, COUNT(*)
FROM finance_db.finance_raw.order_items
GROUP BY id 
HAVING count(*) > 1 OR id IS NULL;

-- New Query for table with [renaming cols]
SELECT 
    id AS item_id,
    order_id,
    product_id,
    quantity,
    unit_price,
    (quantity * unit_price) AS total_price
FROM finance_db.finance_raw.order_items;


SELECT 
    id AS item_id,
    order_id,
    product_id,
    quantity,
    unit_price,
    (quantity * unit_price) AS total_price
FROM finance_db.finance_raw.order_items;


-- Transforming table 4 'products'
SELECT * FROM finance_db.finance_raw.products; 

-- check pk is unique and not null
SELECT id, COUNT(*)
FROM finance_db.finance_raw.products
GROUP BY id 
HAVING count(*) > 1 OR id IS NULL;

-- New Query for table with [renaming cols]
SELECT 
    id AS product_id,
    name AS product_name,
    category AS product_category,
    price AS product_price,
FROM finance_db.finance_raw.products;





