BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'remediation_plans',
    'La tabla remediation_plans existe'
);
 
SELECT has_column(
    'public',
    'remediation_plans',
    'finding_id',
    'La columna finding_id existe'
);
 
SELECT has_column(
    'public',
    'remediation_plans',
    'plan_status',
    'La columna plan_status existe'
);
 
SELECT col_is_pk(
    'public',
    'remediation_plans',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
 