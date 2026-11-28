BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'ready_audit_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    ready_audit_count(),
    0,
    'Inicialmente no existen auditorías listas'
);
 
SELECT * FROM finish();
 
ROLLBACK;