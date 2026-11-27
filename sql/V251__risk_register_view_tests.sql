BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'risk_register_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM risk_register_view
    ),
    0,
    'Inicialmente no existen riesgos'
);
 
SELECT * FROM finish();
 
ROLLBACK;