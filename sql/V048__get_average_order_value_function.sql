CREATE OR REPLACE FUNCTION get_average_order_value()
RETURNS NUMERIC
LANGUAGE SQL
AS
$$
    SELECT COALESCE(
        AVG(amount),
        0
    )
    FROM payments;
$$;