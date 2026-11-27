BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'incident_responses',
    'La tabla incident_responses existe'
);
 
SELECT has_column(
    'public',
    'incident_responses',
    'incident_id',
    'La columna incident_id existe'
);
 
SELECT has_column(
    'public',
    'incident_responses',
    'response_status',
    'La columna response_status existe'
);
 
SELECT col_is_pk(
    'public',
    'incident_responses',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;