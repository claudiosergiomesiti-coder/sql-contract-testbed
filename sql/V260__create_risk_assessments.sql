CREATE TABLE IF NOT EXISTS public.risk_assessments (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    risk_id integer NOT NULL,
 
    assessment_score integer NOT NULL,
 
    assessment_status text NOT NULL,
 
    created_at timestamp NOT NULL DEFAULT now(),
 
    CONSTRAINT risk_assessments_pk
        PRIMARY KEY (id),
 
    CONSTRAINT risk_assessments_risk_fk
        FOREIGN KEY (risk_id)
        REFERENCES risk_register(id)
 
);