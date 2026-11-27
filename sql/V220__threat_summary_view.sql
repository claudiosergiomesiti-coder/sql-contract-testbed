CREATE OR REPLACE VIEW threat_summary_view
AS
SELECT
    t.id,
    s.incident_type,
    s.severity,
    t.risk_level,
    t.created_at
FROM threat_classifications t
JOIN security_incidents s
    ON s.id = t.incident_id;