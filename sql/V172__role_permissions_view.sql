CREATE OR REPLACE VIEW role_permissions_view
AS
SELECT
    rp.id,
    r.name AS role_name,
    p.name AS permission_name
FROM role_permissions rp
JOIN roles r
    ON r.id = rp.role_id
JOIN permissions p
    ON p.id = rp.permission_id;