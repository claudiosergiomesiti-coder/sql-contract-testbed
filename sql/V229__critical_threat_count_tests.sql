BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'critical_threat_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    critical_threat_count(),
    0,
    'Inicialmente no existen amenazas críticas'
);
 
SELECT * FROM finish();
 
ROLLBACK;