CREATE OR REPLACE VIEW control_tests_view AS
SELECT
    ct.id,
    sc.control_name,
    sc.control_status,
    ct.test_status,
    ct.test_result,
    ct.created_at
FROM control_tests ct
JOIN security_controls sc
    ON sc.id = ct.control_id;