BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'open_escalation_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    open_escalation_count(),
    0,
    'Inicialmente no existen escalaciones abiertas'
);
 
SELECT * FROM finish();
 
ROLLBACK;