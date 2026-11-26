SELECT plan(2);
 
SELECT has_view(
    'public',
    'customer_segmentation',
    'La vista customer_segmentation existe'
);
 
SELECT ok(
    (SELECT COUNT(*) >= 1 FROM customer_segmentation),
    'customer_segmentation devuelve al menos una fila'
);
 
SELECT * FROM finish();