BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'notification_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    notification_count(),
    0,
    'Inicialmente no existen notificaciones'
);
 
SELECT * FROM finish();
 
ROLLBACK;