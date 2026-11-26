CREATE OR REPLACE FUNCTION get_customer_revenue(
    p_customer_id INTEGER
)
RETURNS NUMERIC
LANGUAGE SQL
AS
$$
    SELECT COALESCE(
        SUM(pay.amount),
        0
    )
    FROM payments pay
    JOIN orders o
      ON o.id = pay.order_id
    WHERE o.customer_id = p_customer_id;
$$;