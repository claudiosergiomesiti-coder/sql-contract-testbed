BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'audit_evidence_dashboard_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM audit_evidence_dashboard_view
    ),
    0,
    'Inicialmente no existen evidencias'
);
 
SELECT * FROM finish();
 
ROLLBACK;