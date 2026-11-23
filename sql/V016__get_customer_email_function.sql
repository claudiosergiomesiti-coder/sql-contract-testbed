CREATE OR REPLACE FUNCTION get_customer_email(
    p_customer_id integer
)
RETURNS text
LANGUAGE sql
AS
$$

    SELECT email
    FROM customers
    WHERE id = p_customer_id;

$$;