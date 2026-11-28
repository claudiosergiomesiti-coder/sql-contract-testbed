BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'remediation_tasks',
    'La tabla remediation_tasks existe'
);
 
SELECT has_column(
    'public',
    'remediation_tasks',
    'plan_id',
    'La columna plan_id existe'
);
 
SELECT has_column(
    'public',
    'remediation_tasks',
    'task_status',
    'La columna task_status existe'
);
 
SELECT col_is_pk(
    'public',
    'remediation_tasks',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;