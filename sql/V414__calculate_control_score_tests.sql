BEGIN;
 
SELECT plan(4);
 
SELECT is(
    calculate_control_score(10,10),
    100.00::numeric,
    '100 por ciento'
);
 
SELECT is(
    calculate_control_score(8,10),
    80.00::numeric,
    '80 por ciento'
);
 
SELECT is(
    calculate_control_score(5,10),
    50.00::numeric,
    '50 por ciento'
);
 
SELECT is(
    calculate_control_score(0,0),
    0::numeric,
    'Sin pruebas'
);
 
SELECT * FROM finish();
 
ROLLBACK;