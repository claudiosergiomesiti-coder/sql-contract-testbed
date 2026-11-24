CREATE OR REPLACE VIEW business_kpis AS
SELECT
    get_total_revenue() AS total_revenue,
    get_top_customer() AS top_customer,
    get_top_product() AS top_product,
    (SELECT COUNT(*) FROM customers) AS total_customers,
    (SELECT COUNT(*) FROM orders) AS total_orders;