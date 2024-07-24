select
    *,
    ROUND((margin+shipping_fee-logcost-CAST(ship_cost AS FLOAT64)),2) AS operational_margin
FROM {{ ref('int_orders_margin') }}
JOIN {{ ref('stg_raw__ship') }}
USING (orders_id)

