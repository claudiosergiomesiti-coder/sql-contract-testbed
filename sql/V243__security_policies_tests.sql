BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'security_policies',
    'La tabla security_policies existe'
);
 
SELECT has_column(
    'public',
    'security_policies',
    'policy_name',
    'La columna policy_name existe'
);
 
SELECT has_column(
    'public',
    'security_policies',
    'policy_status',
    'La columna policy_status existe'
);
 
SELECT col_is_pk(
    'public',
    'security_policies',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
 