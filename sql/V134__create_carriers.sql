CREATE TABLE IF NOT EXISTS public.carriers (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    name text NOT NULL,
 
    contact_email text,
 
    CONSTRAINT carriers_pk
        PRIMARY KEY (id)
 
);