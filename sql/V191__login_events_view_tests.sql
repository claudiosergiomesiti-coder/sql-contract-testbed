BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'login_events_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT count(*)::integer
        FROM login_events_view
    ),
    0,
    'Inicialmente no existen eventos'
);
 
SELECT * FROM finish();
 
ROLLBACK;