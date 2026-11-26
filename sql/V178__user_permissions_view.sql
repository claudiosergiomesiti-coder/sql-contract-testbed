CREATE OR REPLACE VIEW user_permissions_view
AS
SELECT
    up.id,
    u.username,
    p.name AS permission_name
FROM user_permissions up
JOIN users u
    ON u.id = up.user_id
JOIN permissions p
    ON p.id = up.permission_id;