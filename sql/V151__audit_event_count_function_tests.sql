BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'audit_event_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    audit_event_count(),
    0,
    'Inicialmente no existen eventos'
);
 
SELECT * FROM finish();
 
ROLLBACK;