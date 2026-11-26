CREATE OR REPLACE FUNCTION shipment_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM shipments;
$$;