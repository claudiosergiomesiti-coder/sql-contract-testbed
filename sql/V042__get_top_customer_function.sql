CREATE OR REPLACE FUNCTION get_top_customer()
RETURNS TEXT
LANGUAGE SQL
AS
$$
    SELECT customer_name
    FROM top_customers
    ORDER BY total_revenue DESC
    LIMIT 1;
$$;