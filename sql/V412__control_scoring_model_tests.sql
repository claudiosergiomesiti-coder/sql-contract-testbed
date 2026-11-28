BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'control_scoring_model',
    'La tabla control_scoring_model existe'
);
 
SELECT has_column(
    'public',
    'control_scoring_model',
    'effectiveness_score',
    'La columna effectiveness_score existe'
);
 
SELECT has_column(
    'public',
    'control_scoring_model',
    'effectiveness_rating',
    'La columna effectiveness_rating existe'
);
 
SELECT col_is_pk(
    'public',
    'control_scoring_model',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;