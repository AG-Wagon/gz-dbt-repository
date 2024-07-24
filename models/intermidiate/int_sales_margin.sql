select
    *
    ,(quantity*CAST(purchase_price AS FLOAT64)) AS purchase_cost
    ,ROUND(revenue-(quantity*CAST(purchase_price AS FLOAT64)),2) AS margin

from {{ ref('stg_raw__sales') }}
join {{ ref('stg_raw__product') }}
USING (products_id)