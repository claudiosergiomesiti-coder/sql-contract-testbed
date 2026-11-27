CREATE OR REPLACE VIEW compliance_dashboard_view
AS
SELECT
    id,
    metric_name,
    metric_value,
    created_at
FROM compliance_metrics;