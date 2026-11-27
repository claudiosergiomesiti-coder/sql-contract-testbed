BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'risk_reviews_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM risk_reviews_view
    ),
    0,
    'Inicialmente no existen revisiones'
);
 
SELECT * FROM finish();
 
ROLLBACK;