CREATE TABLE IF NOT EXISTS public.purchase_orders (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    supplier_id integer NOT NULL,
 
    total numeric(10,2) NOT NULL,
 
    created_at timestamp NOT NULL DEFAULT now(),
 
    CONSTRAINT purchase_orders_pk
        PRIMARY KEY (id),
 
    CONSTRAINT purchase_orders_supplier_fk
        FOREIGN KEY (supplier_id)
        REFERENCES suppliers(id)
 
);