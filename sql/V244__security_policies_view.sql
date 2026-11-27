CREATE OR REPLACE VIEW security_policies_view
AS
SELECT
    id,
    policy_name,
    policy_status,
    created_at
FROM security_policies;