BEGIN;
 
SELECT plan(4);
 
SELECT is(
    classify_risk_score(2),
    'LOW',
    'LOW correctamente clasificado'
);
 
SELECT is(
    classify_risk_score(8),
    'MEDIUM',
    'MEDIUM correctamente clasificado'
);
 
SELECT is(
    classify_risk_score(12),
    'HIGH',
    'HIGH correctamente clasificado'
);
 
SELECT is(
    classify_risk_score(20),
    'CRITICAL',
    'CRITICAL correctamente clasificado'
);
 
SELECT * FROM finish();
 
ROLLBACK;