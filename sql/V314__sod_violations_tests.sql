BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'sod_violations',
    'La tabla sod_violations existe'
);
 
SELECT has_column(
    'public',
    'sod_violations',
    'user_id',
    'La columna user_id existe'
);
 
SELECT has_column(
    'public',
    'sod_violations',
    'violation_status',
    'La columna violation_status existe'
);
 
SELECT col_is_pk(
    'public',
    'sod_violations',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;