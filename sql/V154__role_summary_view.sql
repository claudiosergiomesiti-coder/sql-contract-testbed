CREATE OR REPLACE VIEW role_summary_view
AS
SELECT
    id,
    name,
    description,
    created_at
FROM roles;