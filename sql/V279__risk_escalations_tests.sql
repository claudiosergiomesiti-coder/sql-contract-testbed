BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'risk_escalations',
    'La tabla risk_escalations existe'
);
 
SELECT has_column(
    'public',
    'risk_escalations',
    'risk_id',
    'La columna risk_id existe'
);
 
SELECT has_column(
    'public',
    'risk_escalations',
    'escalation_status',
    'La columna escalation_status existe'
);
 
SELECT col_is_pk(
    'public',
    'risk_escalations',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;