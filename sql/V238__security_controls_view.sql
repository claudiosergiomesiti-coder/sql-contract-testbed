CREATE OR REPLACE VIEW security_controls_view
AS
SELECT
    id,
    control_name,
    control_status,
    created_at
FROM security_controls;