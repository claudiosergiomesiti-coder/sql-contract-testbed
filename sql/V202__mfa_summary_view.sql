CREATE OR REPLACE VIEW mfa_summary_view
AS
SELECT
    m.id,
    u.username,
    m.method_type,
    m.is_enabled
FROM mfa_methods m
JOIN users u
    ON u.id = m.user_id;