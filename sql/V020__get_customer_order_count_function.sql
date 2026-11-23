CREATE OR REPLACE FUNCTION get_customer_order_count(
    p_customer_id integer
)
RETURNS integer
LANGUAGE sql
AS
$$

    SELECT COUNT(*)::integer
    FROM orders
    WHERE customer_id = p_customer_id;

$$;