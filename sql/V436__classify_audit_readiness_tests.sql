BEGIN;
 
SELECT plan(4);
 
SELECT is(
    classify_audit_readiness(95),
    'READY',
    'READY'
);
 
SELECT is(
    classify_audit_readiness(80),
    'MOSTLY_READY',
    'MOSTLY_READY'
);
 
SELECT is(
    classify_audit_readiness(60),
    'PARTIALLY_READY',
    'PARTIALLY_READY'
);
 
SELECT is(
    classify_audit_readiness(25),
    'NOT_READY',
    'NOT_READY'
);
 
SELECT * FROM finish();
 
ROLLBACK;