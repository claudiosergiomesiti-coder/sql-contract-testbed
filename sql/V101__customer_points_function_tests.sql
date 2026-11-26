BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'customer_points',
    ARRAY['integer'],
    'La función existe'
);
 
SELECT is(
    customer_points(1),
    150,
    'Devuelve 150 puntos'
);
 
SELECT * FROM finish();
 
ROLLBACK;