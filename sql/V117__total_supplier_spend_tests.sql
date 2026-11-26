BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'total_supplier_spend',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    total_supplier_spend(),
    0::numeric,
    'Inicialmente el gasto es cero'
);
 
SELECT * FROM finish();
 
ROLLBACK;