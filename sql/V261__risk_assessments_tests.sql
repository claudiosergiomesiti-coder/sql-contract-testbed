BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'risk_assessments',
    'La tabla risk_assessments existe'
);
 
SELECT has_column(
    'public',
    'risk_assessments',
    'risk_id',
    'La columna risk_id existe'
);
 
SELECT has_column(
    'public',
    'risk_assessments',
    'assessment_score',
    'La columna assessment_score existe'
);
 
SELECT col_is_pk(
    'public',
    'risk_assessments',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;