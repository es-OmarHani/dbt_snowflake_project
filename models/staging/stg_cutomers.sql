SELECT 
    id AS customer_id,
    customer_name,
    email AS customer_mail,
    country AS customer_country
FROM {{ source('finance_raw', 'customers') }}