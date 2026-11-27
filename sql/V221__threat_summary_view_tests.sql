BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'threat_summary_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM threat_summary_view
    ),
    0,
    'Inicialmente no existen amenazas clasificadas'
);
 
SELECT * FROM finish();
 
ROLLBACK;