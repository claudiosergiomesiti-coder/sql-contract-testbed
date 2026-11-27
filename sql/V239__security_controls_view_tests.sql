BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'security_controls_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM security_controls_view
    ),
    0,
    'Inicialmente no existen controles'
);
 
SELECT * FROM finish();
 
ROLLBACK;