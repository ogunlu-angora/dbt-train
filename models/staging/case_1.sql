SELECT
  mo.month_,
  mo.product_id,
  --p.product_category,
  mo.total_orders,
  mo.total_sales,
  p.product_price
FROM
  {{ ref('monthly_orders') }} mo
JOIN
   {{ ref('raw_produtcs') }} p
ON
  mo.product_id = p.product_id
