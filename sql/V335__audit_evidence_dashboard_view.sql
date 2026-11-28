CREATE OR REPLACE VIEW audit_evidence_dashboard_view AS
SELECT
    e.id,
    e.evidence_name,
    e.evidence_status,
    COUNT(r.id) AS reviews
FROM audit_evidence e
LEFT JOIN evidence_reviews r
    ON r.evidence_id = e.id
GROUP BY
    e.id,
    e.evidence_name,
    e.evidence_status;