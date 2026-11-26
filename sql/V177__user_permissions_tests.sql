BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'user_permissions',
    'La tabla user_permissions existe'
);
 
SELECT has_column(
    'public',
    'user_permissions',
    'user_id',
    'La columna user_id existe'
);
 
SELECT has_column(
    'public',
    'user_permissions',
    'permission_id',
    'La columna permission_id existe'
);
 
SELECT col_is_pk(
    'public',
    'user_permissions',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;