SELECT 
    id AS order_id,
    customer_id,
    order_date,
    total_amount,
    status AS order_status
FROM {{ source('finance_raw', 'orders') }}