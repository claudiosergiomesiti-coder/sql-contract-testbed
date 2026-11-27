CREATE TABLE IF NOT EXISTS public.threat_classifications (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    incident_id integer NOT NULL,
 
    risk_level text NOT NULL,
 
    classification_notes text,
 
    created_at timestamp NOT NULL DEFAULT now(),
 
    CONSTRAINT threat_classifications_pk
        PRIMARY KEY (id),
 
    CONSTRAINT threat_classifications_incident_fk
        FOREIGN KEY (incident_id)
        REFERENCES security_incidents(id)
 
);