BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'active_policy_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    active_policy_count(),
    0,
    'Inicialmente no existen políticas activas'
);
 
SELECT * FROM finish();
 
ROLLBACK;