


select
    date_date,
    COUNT(orders_id) AS nb_transactions,
    ROUND(SUM(revenue),1) AS revenue,
    ROUND(SUM(revenue)/COUNT(orders_id),1) AS average_basket,
    ROUND(SUM(margin),1) AS margin,
    ROUND(SUM(operational_margin),1) AS operational_margin
from {{ ref('int_orders_operational') }}
GROUP BY date_date
