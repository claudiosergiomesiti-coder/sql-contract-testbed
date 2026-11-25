CREATE OR REPLACE VIEW executive_alerts AS
SELECT
    customer_id,
    customer_name,
    health_score,
    CASE
        WHEN health_score <= 25 THEN 'CRITICAL'
        WHEN health_score <= 50 THEN 'WARNING'
        ELSE 'HEALTHY'
    END AS alert_level
FROM customer_health_score;