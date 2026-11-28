CREATE OR REPLACE VIEW remediation_tracking_dashboard_view AS
SELECT
    t.id,
    t.tracking_status,
    t.progress_percent,
    COUNT(c.id) AS closures
FROM remediation_tracking t
LEFT JOIN remediation_closures c
    ON c.tracking_id = t.id
GROUP BY
    t.id,
    t.tracking_status,
    t.progress_percent;