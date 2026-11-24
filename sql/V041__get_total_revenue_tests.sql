BEGIN;
 
SELECT plan(3);
 
INSERT INTO payments (
    id,
    order_id,
    amount,
    payment_date
)
VALUES
    (300, 1, 500.00, CURRENT_DATE);
 
SELECT has_function(
    'get_total_revenue',
    ARRAY[]::TEXT[],
    'La función existe'
);
 
SELECT is(
    get_total_revenue(),
    500.00::numeric,
    'Devuelve la facturación total correcta'
);
 
SELECT is(
    (
        SELECT CASE
            WHEN get_total_revenue() > 0
            THEN 'SI'
            ELSE 'NO'
        END
    ),
    'SI',
    'La facturación total es positiva'
);
 
SELECT * FROM finish();
 
ROLLBACK;