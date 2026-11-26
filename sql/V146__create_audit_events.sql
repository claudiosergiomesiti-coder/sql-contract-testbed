CREATE TABLE IF NOT EXISTS public.audit_events (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    event_type text NOT NULL,
 
    event_message text NOT NULL,
 
    created_at timestamp NOT NULL DEFAULT now(),
 
    CONSTRAINT audit_events_pk
        PRIMARY KEY (id)
 
);