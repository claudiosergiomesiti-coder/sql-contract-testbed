BEGIN;
 
SELECT plan(4);
 
SELECT is(
    classify_compliance_score(95),
    'COMPLIANT',
    'COMPLIANT'
);
 
SELECT is(
    classify_compliance_score(80),
    'PARTIAL',
    'PARTIAL'
);
 
SELECT is(
    classify_compliance_score(60),
    'AT_RISK',
    'AT_RISK'
);
 
SELECT is(
    classify_compliance_score(25),
    'NON_COMPLIANT',
    'NON_COMPLIANT'
);
 
SELECT * FROM finish();
 
ROLLBACK;