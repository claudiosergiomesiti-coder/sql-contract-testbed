CREATE OR REPLACE VIEW compliance_score_dashboard_view AS
SELECT
    c.id,
    p.policy_name,
    c.compliance_score,
    c.compliance_rating
FROM compliance_scoring_model c
JOIN security_policies p
    ON p.id = c.policy_id;