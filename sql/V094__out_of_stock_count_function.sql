CREATE OR REPLACE FUNCTION out_of_stock_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM inventory
WHERE stock = 0;
$$;