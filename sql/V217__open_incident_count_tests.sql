BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'open_incident_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    open_incident_count(),
    0,
    'Inicialmente no existen incidentes abiertos'
);
 
SELECT * FROM finish();
 
ROLLBACK;