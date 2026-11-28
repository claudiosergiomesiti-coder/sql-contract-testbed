BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'remediation_tracking',
    'La tabla remediation_tracking existe'
);
 
SELECT has_column(
    'public',
    'remediation_tracking',
    'task_id',
    'La columna task_id existe'
);
 
SELECT has_column(
    'public',
    'remediation_tracking',
    'progress_percent',
    'La columna progress_percent existe'
);
 
SELECT col_is_pk(
    'public',
    'remediation_tracking',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;