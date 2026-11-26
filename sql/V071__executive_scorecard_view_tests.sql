SELECT plan(2);
 
SELECT has_view(
    'public',
    'executive_scorecard',
    'La vista executive_scorecard existe'
);
 
SELECT results_eq(
    'SELECT COUNT(*)::INTEGER FROM executive_scorecard',
    ARRAY[1],
    'executive_scorecard devuelve una fila'
);
 
SELECT * FROM finish();