CREATE OR REPLACE VIEW risk_assessment_view
AS
SELECT
    a.id,
    r.risk_name,
    r.risk_severity,
    a.assessment_score,
    a.assessment_status,
    a.created_at
FROM risk_assessments a
JOIN risk_register r
    ON r.id = a.risk_id;