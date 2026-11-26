CREATE TABLE IF NOT EXISTS public.warehouse_locations (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    name text NOT NULL,
 
    capacity integer NOT NULL,
 
    CONSTRAINT warehouse_locations_pk
        PRIMARY KEY (id)
 
);