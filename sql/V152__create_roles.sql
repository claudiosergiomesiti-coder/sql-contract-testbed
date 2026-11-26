CREATE TABLE IF NOT EXISTS public.roles (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    name text NOT NULL,
 
    description text,
 
    created_at timestamp NOT NULL DEFAULT now(),
 
    CONSTRAINT roles_pk
        PRIMARY KEY (id)
 
);