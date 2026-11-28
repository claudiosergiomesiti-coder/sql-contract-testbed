CREATE OR REPLACE VIEW executive_dashboard_view AS
SELECT
    m.metric_name,
    m.metric_value,
    COUNT(s.id) AS snapshots
FROM executive_metrics m
LEFT JOIN dashboard_snapshots s
    ON 1 = 1
GROUP BY
    m.metric_name,
    m.metric_value;