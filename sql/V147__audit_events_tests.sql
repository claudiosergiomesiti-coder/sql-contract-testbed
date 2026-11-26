BEGIN;
 
SELECT plan(3);
 
SELECT has_table(
    'public',
    'audit_events',
    'La tabla audit_events existe'
);
 
SELECT has_column(
    'public',
    'audit_events',
    'event_type',
    'La columna event_type existe'
);
 
SELECT col_is_pk(
    'public',
    'audit_events',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;