CREATE OR REPLACE VIEW access_review_dashboard_view AS
SELECT
    c.id,
    c.campaign_name,
    c.campaign_status,
    COUNT(i.id) AS review_items
FROM access_review_campaigns c
LEFT JOIN access_review_items i
    ON i.campaign_id = c.id
GROUP BY
    c.id,
    c.campaign_name,
    c.campaign_status;