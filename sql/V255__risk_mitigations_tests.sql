BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'risk_mitigations',
    'La tabla risk_mitigations existe'
);
 
SELECT has_column(
    'public',
    'risk_mitigations',
    'risk_id',
    'La columna risk_id existe'
);
 
SELECT has_column(
    'public',
    'risk_mitigations',
    'mitigation_status',
    'La columna mitigation_status existe'
);
 
SELECT col_is_pk(
    'public',
    'risk_mitigations',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;