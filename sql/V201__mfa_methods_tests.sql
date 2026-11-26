BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'mfa_methods',
    'La tabla mfa_methods existe'
);
 
SELECT has_column(
    'public',
    'mfa_methods',
    'user_id',
    'La columna user_id existe'
);
 
SELECT has_column(
    'public',
    'mfa_methods',
    'method_type',
    'La columna method_type existe'
);
 
SELECT col_is_pk(
    'public',
    'mfa_methods',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;