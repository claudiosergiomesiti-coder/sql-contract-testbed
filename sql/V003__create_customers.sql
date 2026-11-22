CREATE TABLE IF NOT EXISTS public.customers (

    id integer GENERATED ALWAYS AS IDENTITY,

    name text NOT NULL,

    email text NOT NULL,

    created_at timestamp NOT NULL DEFAULT now(),

    CONSTRAINT customers_pk
        PRIMARY KEY (id)

);