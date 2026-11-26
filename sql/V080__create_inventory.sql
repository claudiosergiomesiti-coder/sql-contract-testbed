CREATE TABLE IF NOT EXISTS public.inventory (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    product_id integer NOT NULL,
 
    stock integer NOT NULL DEFAULT 0,
 
    minimum_stock integer NOT NULL DEFAULT 0,
 
    last_update timestamp NOT NULL DEFAULT now(),
 
    CONSTRAINT inventory_pk
        PRIMARY KEY (id),
 
    CONSTRAINT inventory_product_fk
        FOREIGN KEY (product_id)
        REFERENCES products(id)
 
);