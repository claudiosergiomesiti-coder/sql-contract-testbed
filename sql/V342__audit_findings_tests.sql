BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'audit_findings',
    'La tabla audit_findings existe'
);
 
SELECT has_column(
    'public',
    'audit_findings',
    'finding_severity',
    'La columna finding_severity existe'
);
 
SELECT has_column(
    'public',
    'audit_findings',
    'finding_status',
    'La columna finding_status existe'
);
 
SELECT col_is_pk(
    'public',
    'audit_findings',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;