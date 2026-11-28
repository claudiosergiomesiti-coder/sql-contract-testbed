BEGIN;
 
SELECT plan(4);
 
SELECT is(
    calculate_compliance_score(10,10),
    100.00::numeric,
    '100%'
);
 
SELECT is(
    calculate_compliance_score(8,10),
    80.00::numeric,
    '80%'
);
 
SELECT is(
    calculate_compliance_score(5,10),
    50.00::numeric,
    '50%'
);
 
SELECT is(
    calculate_compliance_score(0,0),
    0::numeric,
    '0%'
);
 
SELECT * FROM finish();
 
ROLLBACK;