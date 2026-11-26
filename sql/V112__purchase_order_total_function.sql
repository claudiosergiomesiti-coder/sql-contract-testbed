CREATE OR REPLACE FUNCTION purchase_order_total(
    p_purchase_order_id integer
)
 
RETURNS numeric
 
LANGUAGE SQL
 
AS
$$
SELECT COALESCE(
    total,
    0
)
FROM purchase_orders
WHERE id = p_purchase_order_id;
$$;