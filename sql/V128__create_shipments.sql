CREATE TABLE IF NOT EXISTS public.shipments (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    order_id integer NOT NULL,
 
    status text NOT NULL DEFAULT 'PENDING',
 
    shipped_at timestamp,
 
    CONSTRAINT shipments_pk
        PRIMARY KEY (id),
 
    CONSTRAINT shipments_order_fk
        FOREIGN KEY (order_id)
        REFERENCES orders(id)
 
);