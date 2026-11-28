BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'risk_scoring_model',
    'La tabla risk_scoring_model existe'
);
 
SELECT has_column(
    'public',
    'risk_scoring_model',
    'likelihood_score',
    'La columna likelihood_score existe'
);
 
SELECT has_column(
    'public',
    'risk_scoring_model',
    'impact_score',
    'La columna impact_score existe'
);
 
SELECT col_is_pk(
    'public',
    'risk_scoring_model',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;