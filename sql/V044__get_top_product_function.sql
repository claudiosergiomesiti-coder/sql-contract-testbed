CREATE OR REPLACE FUNCTION get_top_product()
RETURNS TEXT
LANGUAGE SQL
AS
$$
    SELECT product_name
    FROM top_products
    ORDER BY revenue DESC
    LIMIT 1;
$$;