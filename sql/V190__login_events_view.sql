CREATE OR REPLACE VIEW login_events_view
AS
SELECT
    le.id,
    u.username,
    le.event_type,
    le.created_at
FROM login_events le
JOIN users u
    ON u.id = le.user_id;