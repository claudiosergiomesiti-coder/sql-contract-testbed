CREATE OR REPLACE FUNCTION get_customer_tier(
    p_customer_id integer
)
RETURNS text
LANGUAGE sql
AS
$$

    SELECT
        CASE

            WHEN get_customer_total_spent(
                p_customer_id
            ) >= 500
                THEN 'GOLD'

            WHEN get_customer_total_spent(
                p_customer_id
            ) >= 100
                THEN 'SILVER'

            ELSE 'BRONZE'

        END;

$$;