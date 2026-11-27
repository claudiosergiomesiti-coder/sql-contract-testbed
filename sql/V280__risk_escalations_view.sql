CREATE OR REPLACE VIEW risk_escalations_view AS
SELECT
    e.id,
    r.risk_name,
    r.risk_severity,
    e.escalation_status,
    e.created_at
FROM risk_escalations e
JOIN risk_register r
    ON r.id = e.risk_id;