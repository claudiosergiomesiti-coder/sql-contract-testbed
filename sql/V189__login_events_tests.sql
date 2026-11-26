BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'login_events',
    'La tabla login_events existe'
);
 
SELECT has_column(
    'public',
    'login_events',
    'user_id',
    'La columna user_id existe'
);
 
SELECT has_column(
    'public',
    'login_events',
    'event_type',
    'La columna event_type existe'
);
 
SELECT col_is_pk(
    'public',
    'login_events',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;