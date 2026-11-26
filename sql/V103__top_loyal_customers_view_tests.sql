BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'top_loyal_customers_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT id
        FROM top_loyal_customers_view
        LIMIT 1
    ),
    1,
    'El cliente 1 lidera el ranking'
);
 
SELECT * FROM finish();
 
ROLLBACK;