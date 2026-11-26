BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'role_permissions',
    'La tabla role_permissions existe'
);
 
SELECT has_column(
    'public',
    'role_permissions',
    'role_id',
    'La columna role_id existe'
);
 
SELECT has_column(
    'public',
    'role_permissions',
    'permission_id',
    'La columna permission_id existe'
);
 
SELECT col_is_pk(
    'public',
    'role_permissions',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
 