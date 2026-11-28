BEGIN;
 
SELECT plan(4);
 
SELECT is(
    calculate_executive_kpi(100,100,100,100),
    100.00::numeric,
    'Promedio perfecto'
);
 
SELECT is(
    calculate_executive_kpi(80,80,80,80),
    80.00::numeric,
    'Promedio 80'
);
 
SELECT is(
    calculate_executive_kpi(50,50,50,50),
    50.00::numeric,
    'Promedio 50'
);
 
SELECT is(
    calculate_executive_kpi(0,0,0,0),
    0.00::numeric,
    'Promedio 0'
);
 
SELECT * FROM finish();
 
ROLLBACK;