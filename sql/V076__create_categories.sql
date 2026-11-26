CREATE TABLE IF NOT EXISTS public.categories (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    name text NOT NULL,
 
    description text,
 
    CONSTRAINT categories_pk
        PRIMARY KEY (id)
 
);