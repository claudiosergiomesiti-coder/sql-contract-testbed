CREATE OR REPLACE FUNCTION low_stock_products_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM inventory
WHERE stock <= minimum_stock;
$$;