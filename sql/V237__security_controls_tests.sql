BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'security_controls',
    'La tabla security_controls existe'
);
 
SELECT has_column(
    'public',
    'security_controls',
    'control_name',
    'La columna control_name existe'
);
 
SELECT has_column(
    'public',
    'security_controls',
    'control_status',
    'La columna control_status existe'
);
 
SELECT col_is_pk(
    'public',
    'security_controls',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;