CREATE OR REPLACE FUNCTION customer_points(
    p_customer_id integer
)
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COALESCE(
    FLOOR(SUM(total))::integer,
    0
)
FROM orders
WHERE customer_id = p_customer_id;
$$;