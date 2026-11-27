CREATE TABLE IF NOT EXISTS public.risk_mitigations (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    risk_id integer NOT NULL,
 
    mitigation_name text NOT NULL,
 
    mitigation_status text NOT NULL,
 
    created_at timestamp NOT NULL DEFAULT now(),
 
    CONSTRAINT risk_mitigations_pk
        PRIMARY KEY (id),
 
    CONSTRAINT risk_mitigations_risk_fk
        FOREIGN KEY (risk_id)
        REFERENCES risk_register(id)
 
);