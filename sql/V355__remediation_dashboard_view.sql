CREATE OR REPLACE VIEW remediation_dashboard_view AS
SELECT
    p.id,
    p.plan_name,
    p.plan_status,
    COUNT(t.id) AS tasks
FROM remediation_plans p
LEFT JOIN remediation_tasks t
    ON t.plan_id = p.id
GROUP BY
    p.id,
    p.plan_name,
    p.plan_status;