CREATE TABLE IF NOT EXISTS public.security_controls (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    control_name text NOT NULL,
 
    control_status text NOT NULL,
 
    created_at timestamp NOT NULL DEFAULT now(),
 
    CONSTRAINT security_controls_pk
        PRIMARY KEY (id)
 
);