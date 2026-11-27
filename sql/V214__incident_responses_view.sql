CREATE OR REPLACE VIEW incident_responses_view
AS
SELECT
    r.id,
    s.incident_type,
    s.severity,
    r.response_status,
    r.created_at
FROM incident_responses r
JOIN security_incidents s
    ON s.id = r.incident_id;