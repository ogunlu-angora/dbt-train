{{
    config(
        materialized='table'
    )
}}



SELECT
    SUBSTR('month', 6,7) AS month_,
    product_id,
    COUNT(*) AS total_orders,
    SUM(total_amount) AS total_sales
  FROM 
     {{ ref('raw_orders') }}
  GROUP BY 
    1, 2