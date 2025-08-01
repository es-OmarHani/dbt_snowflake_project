SELECT
    o.order_date,
    o.order_id,
    SUM(oi.total_price) AS total_price
FROM 
    {{ ref('stg_orders') }} AS o
LEFT JOIN {{ ref('stg_order_items') }} AS oi
    ON o.order_id = oi.order_id
GROUP BY o.order_date, o.order_id
