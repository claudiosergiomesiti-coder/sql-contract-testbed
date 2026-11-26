BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'shipment_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    shipment_count(),
    0,
    'Inicialmente no existen envíos'
);
 
SELECT * FROM finish();
 
ROLLBACK;