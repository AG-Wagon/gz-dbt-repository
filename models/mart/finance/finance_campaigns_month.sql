SELECT
    FORMAT_TIMESTAMP('%Y-%m', date_date) AS date_month,
    SUM(ads_margin) AS ads_margin,
    SUM(average_basket) AS average_basket,
    SUM(operational_margin) AS operational_margin
FROM {{ ref('finance_campaigns_day') }}
GROUP BY date_month