BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'threat_classifications',
    'La tabla threat_classifications existe'
);
 
SELECT has_column(
    'public',
    'threat_classifications',
    'incident_id',
    'La columna incident_id existe'
);
 
SELECT has_column(
    'public',
    'threat_classifications',
    'risk_level',
    'La columna risk_level existe'
);
 
SELECT col_is_pk(
    'public',
    'threat_classifications',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;