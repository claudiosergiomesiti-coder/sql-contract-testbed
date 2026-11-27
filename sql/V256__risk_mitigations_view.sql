CREATE OR REPLACE VIEW risk_mitigations_view
AS
SELECT
    m.id,
    r.risk_name,
    r.risk_severity,
    m.mitigation_name,
    m.mitigation_status,
    m.created_at
FROM risk_mitigations m
JOIN risk_register r
    ON r.id = m.risk_id;