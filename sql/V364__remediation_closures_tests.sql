BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'remediation_closures',
    'La tabla remediation_closures existe'
);
 
SELECT has_column(
    'public',
    'remediation_closures',
    'tracking_id',
    'La columna tracking_id existe'
);
 
SELECT has_column(
    'public',
    'remediation_closures',
    'closure_status',
    'La columna closure_status existe'
);
 
SELECT col_is_pk(
    'public',
    'remediation_closures',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;