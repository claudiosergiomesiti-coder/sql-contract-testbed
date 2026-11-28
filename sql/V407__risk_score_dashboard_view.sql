CREATE OR REPLACE VIEW risk_score_dashboard_view AS
SELECT
    r.id,
    rr.risk_name,
    r.likelihood_score,
    r.impact_score,
    r.risk_score,
    r.risk_rating
FROM risk_scoring_model r
JOIN risk_register rr
    ON rr.id = r.risk_id;