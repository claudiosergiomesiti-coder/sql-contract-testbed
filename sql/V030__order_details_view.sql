CREATE OR REPLACE VIEW order_details AS
SELECT
    o.id AS order_id,
    o.customer_id,
    p.name AS product_name,
    oi.quantity,
    p.price,
    (oi.quantity * p.price) AS line_total
FROM orders o
JOIN order_items oi
    ON oi.order_id = o.id
JOIN products p
    ON p.id = oi.product_id;