CREATE OR REPLACE VIEW audit_findings_dashboard_view AS
SELECT
    f.id,
    f.finding_title,
    f.finding_severity,
    f.finding_status,
    COUNT(r.id) AS remediations
FROM audit_findings f
LEFT JOIN finding_remediations r
    ON r.finding_id = f.id
GROUP BY
    f.id,
    f.finding_title,
    f.finding_severity,
    f.finding_status;