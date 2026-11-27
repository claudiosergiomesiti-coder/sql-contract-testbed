CREATE OR REPLACE VIEW security_dashboard_view
AS
SELECT
    id,
    metric_name,
    metric_value,
    created_at
FROM security_metrics;