CREATE OR REPLACE VIEW sod_dashboard_view AS
SELECT
    r.rule_name,
    COUNT(v.id) AS violations
FROM sod_rules r
LEFT JOIN sod_violations v
    ON v.rule_id = r.id
GROUP BY r.rule_name;