CREATE OR REPLACE VIEW user_summary_view
AS
SELECT
    u.id,
    u.username,
    u.email,
    r.name AS role_name
FROM users u
JOIN roles r
    ON r.id = u.role_id;