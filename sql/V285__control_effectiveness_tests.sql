BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'control_effectiveness',
    'La tabla control_effectiveness existe'
);
 
SELECT has_column(
    'public',
    'control_effectiveness',
    'control_id',
    'La columna control_id existe'
);
 
SELECT has_column(
    'public',
    'control_effectiveness',
    'effectiveness_score',
    'La columna effectiveness_score existe'
);
 
SELECT col_is_pk(
    'public',
    'control_effectiveness',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;