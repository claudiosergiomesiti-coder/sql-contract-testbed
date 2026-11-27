CREATE OR REPLACE VIEW risk_register_view
AS
SELECT
    id,
    risk_name,
    risk_category,
    risk_severity,
    risk_owner,
    created_at
FROM risk_register;