BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'risk_owners_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM risk_owners_view
    ),
    0,
    'Inicialmente no existen responsables'
);
 
SELECT * FROM finish();
 
ROLLBACK;