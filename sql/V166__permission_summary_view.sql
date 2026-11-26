CREATE OR REPLACE VIEW permission_summary_view
AS
SELECT
    id,
    name,
    description,
    created_at
FROM permissions;
 