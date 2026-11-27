BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'policy_exceptions',
    'La tabla policy_exceptions existe'
);
 
SELECT has_column(
    'public',
    'policy_exceptions',
    'policy_id',
    'La columna policy_id existe'
);
 
SELECT has_column(
    'public',
    'policy_exceptions',
    'exception_status',
    'La columna exception_status existe'
);
 
SELECT col_is_pk(
    'public',
    'policy_exceptions',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;