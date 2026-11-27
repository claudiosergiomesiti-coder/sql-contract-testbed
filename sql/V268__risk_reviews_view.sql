CREATE OR REPLACE VIEW risk_reviews_view
AS
SELECT
    rr.id,
    r.risk_name,
    r.risk_severity,
    rr.review_status,
    rr.created_at
FROM risk_reviews rr
JOIN risk_register r
    ON r.id = rr.risk_id;