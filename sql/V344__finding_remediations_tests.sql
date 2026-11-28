BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'finding_remediations',
    'La tabla finding_remediations existe'
);
 
SELECT has_column(
    'public',
    'finding_remediations',
    'finding_id',
    'La columna finding_id existe'
);
 
SELECT has_column(
    'public',
    'finding_remediations',
    'remediation_status',
    'La columna remediation_status existe'
);
 
SELECT col_is_pk(
    'public',
    'finding_remediations',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;