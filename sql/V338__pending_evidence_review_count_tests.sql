BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'pending_evidence_review_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    pending_evidence_review_count(),
    0,
    'Inicialmente no existen revisiones pendientes'
);
 
SELECT * FROM finish();
 
ROLLBACK;