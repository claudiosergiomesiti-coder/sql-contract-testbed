BEGIN;
 
SELECT plan(4);
 
SELECT is(
    calculate_risk_score(5,5),
    25,
    '5 x 5 = 25'
);
 
SELECT is(
    calculate_risk_score(5,4),
    20,
    '5 x 4 = 20'
);
 
SELECT is(
    calculate_risk_score(3,3),
    9,
    '3 x 3 = 9'
);
 
SELECT is(
    calculate_risk_score(1,1),
    1,
    '1 x 1 = 1'
);
 
SELECT * FROM finish();
 
ROLLBACK;