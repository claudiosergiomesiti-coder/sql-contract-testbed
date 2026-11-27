BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'security_incidents_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT count(*)::integer
        FROM security_incidents_view
    ),
    0,
    'Inicialmente no existen incidentes'
);
 
SELECT * FROM finish();
 
ROLLBACK;