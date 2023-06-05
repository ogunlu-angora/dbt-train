SELECT
 
  p.product_category,
  sum(case_1.total_orders) as ALL_ORDERS_COUNT,
 sum(case_1.total_sales)  AS ALL_P_CATEGORY_SUM
 
FROM
  {{ ref('case_1') }} case_1
JOIN
   {{ ref('raw_produtcs') }} p
ON
  case_1.product_id = p.product_id

  GROUP BY 1