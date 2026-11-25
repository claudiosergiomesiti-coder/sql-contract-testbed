SELECT plan(2);
 
SELECT has_view(
    'public',
    'executive_alerts',
    'La vista executive_alerts existe'
);
 
SELECT ok(
    (SELECT COUNT(*) >= 1 FROM executive_alerts),
    'executive_alerts devuelve al menos una fila'
);
 
SELECT * FROM finish();