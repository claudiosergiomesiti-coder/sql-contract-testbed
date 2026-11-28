BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'compliance_scoring_model',
    'La tabla compliance_scoring_model existe'
);
 
SELECT has_column(
    'public',
    'compliance_scoring_model',
    'compliance_score',
    'La columna compliance_score existe'
);
 
SELECT has_column(
    'public',
    'compliance_scoring_model',
    'compliance_rating',
    'La columna compliance_rating existe'
);
 
SELECT col_is_pk(
    'public',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;