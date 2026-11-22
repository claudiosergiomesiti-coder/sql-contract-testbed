CREATE TABLE IF NOT EXISTS public.orders (

    id integer GENERATED ALWAYS AS IDENTITY,

    customer_id integer NOT NULL,

    total numeric(10,2) NOT NULL,

    created_at timestamp NOT NULL DEFAULT now(),

    CONSTRAINT orders_pk
        PRIMARY KEY (id),

    CONSTRAINT orders_customer_fk
        FOREIGN KEY (customer_id)
        REFERENCES customers(id)

);