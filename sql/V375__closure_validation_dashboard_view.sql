CREATE OR REPLACE VIEW closure_validation_dashboard_view AS
SELECT
    v.id,
    v.validation_status,
    COUNT(a.id) AS approvals
FROM closure_validations v
LEFT JOIN validation_approvals a
    ON a.validation_id = v.id
GROUP BY
    v.id,
    v.validation_status;