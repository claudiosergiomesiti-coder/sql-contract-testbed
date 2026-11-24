CREATE OR REPLACE FUNCTION get_total_revenue()
RETURNS NUMERIC
LANGUAGE SQL
AS
$$
    SELECT COALESCE(
        SUM(amount),
        0
    )
    FROM payments;
$$;