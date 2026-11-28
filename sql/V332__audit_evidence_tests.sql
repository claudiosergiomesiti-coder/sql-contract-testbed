BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'audit_evidence',
    'La tabla audit_evidence existe'
);
 
SELECT has_column(
    'public',
    'audit_evidence',
    'evidence_type',
    'La columna evidence_type existe'
);
 
SELECT has_column(
    'public',
    'audit_evidence',
    'evidence_status',
    'La columna evidence_status existe'
);
 
SELECT col_is_pk(
    'public',
    'audit_evidence',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;