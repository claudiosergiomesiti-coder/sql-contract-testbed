CREATE OR REPLACE VIEW account_security_view
AS
SELECT
    u.id,
    u.username,
    r.name AS role_name
FROM users u
JOIN roles r
    ON r.id = u.role_id;