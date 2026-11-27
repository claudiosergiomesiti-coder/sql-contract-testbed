CREATE TABLE IF NOT EXISTS public.security_incidents (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    incident_type text NOT NULL,
 
    severity text NOT NULL,
 
    description text,
 
    created_at timestamp NOT NULL DEFAULT now(),
 
    CONSTRAINT security_incidents_pk
        PRIMARY KEY (id)
 
);