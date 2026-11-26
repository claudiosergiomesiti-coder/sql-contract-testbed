CREATE OR REPLACE FUNCTION warehouse_capacity()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COALESCE(
    SUM(capacity),
    0
)::integer
FROM warehouse_locations;
$$;