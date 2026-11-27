CREATE TABLE IF NOT EXISTS public.risk_register (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    risk_name text NOT NULL,
 
    risk_category text NOT NULL,
 
    risk_severity text NOT NULL,
 
    risk_owner text,
 
    created_at timestamp NOT NULL DEFAULT now(),
 
    CONSTRAINT risk_register_pk
        PRIMARY KEY (id)
 
);