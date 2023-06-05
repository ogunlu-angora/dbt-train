




select PRODUCT_ID, MONTH_, count(SATIS_ADEDI) as sum_satis from 
(select  cast (substr(ORDER_DATE,6,2) as INT) as MONTH_,
ORD.product_id as PRODUCT_ID, 
(cast( total_amount as double) )/ (cast( PRODUCT_PRICE as double) ) as satis_adedi

from {{ ref('raw_orders') }} ORD 
JOIN {{ ref('raw_produtcs') }} PROD
WHERE ORD.PRODUCT_ID = PROD.PRODUCT_ID
) as TT
group by 1,2