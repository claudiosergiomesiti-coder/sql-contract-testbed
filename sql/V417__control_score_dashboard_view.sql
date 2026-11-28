CREATE OR REPLACE VIEW control_score_dashboard_view AS
SELECT
    c.id,
    s.control_name,
    c.effectiveness_score,
    c.effectiveness_rating
FROM control_scoring_model c
JOIN security_controls s
    ON s.id = c.control_id;