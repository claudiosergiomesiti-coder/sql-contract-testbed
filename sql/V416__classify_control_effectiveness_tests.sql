BEGIN;
 
SELECT plan(4);
 
SELECT is(
    classify_control_effectiveness(95),
    'EFFECTIVE',
    'EFFECTIVE'
);
 
SELECT is(
    classify_control_effectiveness(80),
    'ADEQUATE',
    'ADEQUATE'
);
 
SELECT is(
    classify_control_effectiveness(60),
    'WEAK',
    'WEAK'
);
 
SELECT is(
    classify_control_effectiveness(40),
    'INEFFECTIVE',
    'INEFFECTIVE'
);
 
SELECT * FROM finish();
 
ROLLBACK;