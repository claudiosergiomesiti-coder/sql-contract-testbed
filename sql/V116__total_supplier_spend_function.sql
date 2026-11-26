CREATE OR REPLACE FUNCTION total_supplier_spend()
 
RETURNS numeric
 
LANGUAGE SQL
 
AS
$$
SELECT COALESCE(
    SUM(total),
    0
)
FROM purchase_orders;
$$;