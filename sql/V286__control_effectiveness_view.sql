CREATE OR REPLACE VIEW control_effectiveness_view AS
SELECT
    ce.id,
    sc.control_name,
    sc.control_status,
    ce.effectiveness_status,
    ce.effectiveness_score,
    ce.created_at
FROM control_effectiveness ce
JOIN security_controls sc
    ON sc.id = ce.control_id;