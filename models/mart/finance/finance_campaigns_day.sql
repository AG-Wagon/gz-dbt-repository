SELECT
    date_date,
    operational_margin-ads_cost AS ads_margin,
    average_basket,
    operational_margin,
    ads_cost,
    margin
FROM {{ ref('int_campaigns_day') }}
JOIN {{ ref('finance_days') }}
USING (date_date)
