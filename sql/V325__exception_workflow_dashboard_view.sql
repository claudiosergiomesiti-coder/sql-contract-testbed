CREATE OR REPLACE VIEW exception_workflow_dashboard_view AS
SELECT
    r.id,
    r.request_name,
    r.request_status,
    COUNT(a.id) AS approvals
FROM exception_requests r
LEFT JOIN exception_approvals a
    ON a.request_id = r.id
GROUP BY
    r.id,
    r.request_name,
    r.request_status;