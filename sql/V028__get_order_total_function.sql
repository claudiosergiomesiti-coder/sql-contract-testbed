CREATE OR REPLACE FUNCTION get_order_total(
    p_order_id INTEGER
)
RETURNS NUMERIC
LANGUAGE SQL
AS
$$
    SELECT COALESCE(
        SUM(oi.quantity * p.price),
        0
    )
    FROM order_items oi
    JOIN products p
      ON p.id = oi.product_id
    WHERE oi.order_id = p_order_id;
$$;