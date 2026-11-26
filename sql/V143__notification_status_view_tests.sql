BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'notification_status_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT count(*)::integer
        FROM notification_status_view
    ),
    0,
    'Inicialmente no hay notificaciones'
);
 
SELECT * FROM finish();
 
ROLLBACK;