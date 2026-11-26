BEGIN;
 
SELECT plan(3);
 
SELECT has_view(
    'public',
    'customer_loyalty_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT loyalty_level
        FROM customer_loyalty_view
        WHERE id = 1
    ),
    'SILVER',
    'Cliente 1 es SILVER'
);
 
SELECT is(
    (
        SELECT total_spent
        FROM customer_loyalty_view
        WHERE id = 1
    ),
    150.00::numeric,
    'Importe correcto'
);
 
SELECT * FROM finish();
 
ROLLBACK;