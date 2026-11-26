CREATE TABLE IF NOT EXISTS public.suppliers (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    name text NOT NULL,
 
    email text NOT NULL,
 
    phone text,
 
    CONSTRAINT suppliers_pk
        PRIMARY KEY (id)
 
);