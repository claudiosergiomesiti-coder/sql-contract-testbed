BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'security_incidents',
    'La tabla security_incidents existe'
);
 
SELECT has_column(
    'public',
    'security_incidents',
    'incident_type',
    'La columna incident_type existe'
);
 
SELECT has_column(
    'public',
    'security_incidents',
    'severity',
    'La columna severity existe'
);
 
SELECT col_is_pk(
    'public',
    'security_incidents',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;