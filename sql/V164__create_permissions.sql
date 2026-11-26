CREATE TABLE IF NOT EXISTS public.permissions (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    name text NOT NULL,
 
    description text,
 
    created_at timestamp NOT NULL DEFAULT now(),
 
    CONSTRAINT permissions_pk
        PRIMARY KEY (id)
 
);