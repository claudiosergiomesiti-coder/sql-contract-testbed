CREATE OR REPLACE VIEW audit_readiness_dashboard_view AS
SELECT
    r.id,
    r.readiness_name,
    r.readiness_status,
    r.readiness_score,
    COUNT(v.id) AS reviews
FROM audit_readiness r
LEFT JOIN readiness_reviews v
    ON v.readiness_id = r.id
GROUP BY
    r.id,
    r.readiness_name,
    r.readiness_status,
    r.readiness_score;