CREATE OR REPLACE FUNCTION get_customer_total_spent(
    p_customer_id integer
)
RETURNS numeric
LANGUAGE sql
AS
$$

    SELECT COALESCE(
        SUM(total),
        0
    )
    FROM orders
    WHERE customer_id = p_customer_id;

$$;