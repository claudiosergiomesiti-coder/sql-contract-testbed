CREATE OR REPLACE VIEW audit_summary_view
AS
SELECT
    event_type,
    COUNT(*)::integer AS total_events
FROM audit_events
GROUP BY event_type;