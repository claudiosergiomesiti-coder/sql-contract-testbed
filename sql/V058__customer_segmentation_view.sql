CREATE OR REPLACE VIEW customer_segmentation AS
SELECT
    customer_id,
    customer_name,
    CASE
        WHEN total_revenue >= 1000 THEN 'GOLD'
        WHEN total_revenue >= 500 THEN 'SILVER'
        ELSE 'BRONZE'
    END AS segment,
    total_revenue
FROM top_customers;