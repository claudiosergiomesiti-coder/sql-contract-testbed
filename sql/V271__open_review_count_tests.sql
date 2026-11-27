BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'open_review_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    open_review_count(),
    0,
    'Inicialmente no existen revisiones abiertas'
);
 
SELECT * FROM finish();
 
ROLLBACK;