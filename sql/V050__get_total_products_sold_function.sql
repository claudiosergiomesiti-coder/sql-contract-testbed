CREATE OR REPLACE FUNCTION get_total_products_sold()
RETURNS INTEGER
LANGUAGE SQL
AS
$$
    SELECT COALESCE(
        SUM(quantity),
        0
    )::INTEGER
    FROM order_items;
$$;