BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'audit_readiness',
    'La tabla audit_readiness existe'
);
 
SELECT has_column(
    'public',
    'audit_readiness',
    'readiness_status',
    'La columna readiness_status existe'
);
 
SELECT has_column(
    'public',
    'audit_readiness',
    'readiness_score',
    'La columna readiness_score existe'
);
 
SELECT col_is_pk(
    'public',
    'audit_readiness',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;