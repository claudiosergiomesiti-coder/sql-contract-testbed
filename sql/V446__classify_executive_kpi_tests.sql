BEGIN;
 
SELECT plan(4);
 
SELECT is(
    classify_executive_kpi(95),
    'EXCELLENT',
    'EXCELLENT'
);
 
SELECT is(
    classify_executive_kpi(80),
    'GOOD',
    'GOOD'
);
 
SELECT is(
    classify_executive_kpi(60),
    'ATTENTION',
    'ATTENTION'
);
 
SELECT is(
    classify_executive_kpi(30),
    'CRITICAL',
    'CRITICAL'
);
 
SELECT * FROM finish();
 
ROLLBACK;