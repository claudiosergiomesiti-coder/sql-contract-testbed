CREATE OR REPLACE VIEW policy_exceptions_view AS
SELECT
    pe.id,
    sp.policy_name,
    sp.policy_status,
    pe.exception_status,
    pe.created_at
FROM policy_exceptions pe
JOIN security_policies sp
    ON sp.id = pe.policy_id;