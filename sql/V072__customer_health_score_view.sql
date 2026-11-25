CREATE OR REPLACE VIEW customer_health_score AS
SELECT
    customer_id,
    customer_name,
    CASE
        WHEN retention_status = 'RETAINED' AND order_count >= 3 THEN 100
        WHEN retention_status = 'RETAINED' THEN 75
        WHEN order_count >= 1 THEN 50
        ELSE 25
    END AS health_score
FROM customer_retention;