CREATE OR REPLACE VIEW sales_forecast AS
SELECT
    ROUND(AVG(total_revenue), 2) AS average_customer_revenue,
    ROUND(AVG(total_revenue) * 1.10, 2) AS forecast_revenue
FROM top_customers;