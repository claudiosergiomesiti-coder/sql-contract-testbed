CREATE OR REPLACE VIEW active_sessions_view
AS
SELECT
    id,
    user_id,
    session_token,
    expires_at
FROM sessions
WHERE expires_at > now();