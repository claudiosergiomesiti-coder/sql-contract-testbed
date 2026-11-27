CREATE OR REPLACE VIEW security_incidents_view
AS
SELECT
    id,
    incident_type,
    severity,
    description,
    created_at
FROM security_incidents;