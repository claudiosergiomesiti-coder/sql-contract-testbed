BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'audit_readiness_model',
    'La tabla audit_readiness_model existe'
);
 
SELECT has_column(
    'public',
    'audit_readiness_model',
    'readiness_score',
    'La columna readiness_score existe'
);
 
SELECT has_column(
    'public',
    'audit_readiness_model',
    'readiness_rating',
    'La columna readiness_rating existe'
);
 
SELECT col_is_pk(
    'public',
    'audit_readiness_model',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;