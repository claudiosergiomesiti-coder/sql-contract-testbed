CREATE OR REPLACE VIEW notification_status_view
AS
SELECT
    id,
    message,
    status,
    created_at
FROM notifications;