BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'executive_metric_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    executive_metric_count(),
    0,
    'Inicialmente no existen métricas'
);
 
SELECT * FROM finish();
 
ROLLBACK;