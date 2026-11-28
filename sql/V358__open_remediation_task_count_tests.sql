BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'open_remediation_task_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    open_remediation_task_count(),
    0,
    'Inicialmente no existen tareas abiertas'
);
 
SELECT * FROM finish();
 
ROLLBACK;
 