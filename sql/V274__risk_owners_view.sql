CREATE OR REPLACE VIEW risk_owners_view AS
SELECT
    o.id,
    r.risk_name,
    o.owner_name,
    o.owner_email,
    o.created_at
FROM risk_owners o
JOIN risk_register r
    ON r.id = o.risk_id;