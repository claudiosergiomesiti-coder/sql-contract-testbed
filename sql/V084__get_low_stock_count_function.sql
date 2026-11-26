CREATE OR REPLACE FUNCTION get_low_stock_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
    SELECT COUNT(*)::integer
    FROM inventory
    WHERE stock <= minimum_stock;
$$;