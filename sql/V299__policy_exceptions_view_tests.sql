BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'policy_exceptions_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM policy_exceptions_view
    ),
    0,
    'Inicialmente no existen excepciones'
);
 
SELECT * FROM finish();
 
ROLLBACK;