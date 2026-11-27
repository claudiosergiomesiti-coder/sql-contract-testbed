CREATE TABLE IF NOT EXISTS public.incident_responses (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    incident_id integer NOT NULL,
 
    response_status text NOT NULL,
 
    notes text,
 
    created_at timestamp NOT NULL DEFAULT now(),
 
    CONSTRAINT incident_responses_pk
        PRIMARY KEY (id),
 
    CONSTRAINT incident_responses_incident_fk
        FOREIGN KEY (incident_id)
        REFERENCES security_incidents(id)
 
);