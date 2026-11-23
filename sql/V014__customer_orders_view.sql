CREATE OR REPLACE VIEW customer_orders AS

SELECT

    c.id,
    c.name,
    c.email,
    o.id AS order_id,
    o.total,
    o.created_at

FROM customers c

INNER JOIN orders o
    ON o.customer_id = c.id;