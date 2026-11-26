BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'active_sessions_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT count(*)::integer
        FROM active_se*sions_view
    ),
    0,
    'Inicialmente no existen sesiones activas'
);
 
SELECT * FROM finish();
 
ROLLBACK;