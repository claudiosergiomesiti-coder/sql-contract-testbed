CREATE TABLE IF NOT EXISTS public.risk_escalations (
    id integer GENERATED ALWAYS AS IDENTITY,
    risk_id integer NOT NULL,
    escalation_status text NOT NULL,
    escalation_reason text,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT risk_escalations_pk PRIMARY KEY (id),
    CONSTRAINT risk_escalations_risk_fk
        FOREIGN KEY (risk_id)
        REFERENCES risk_register(id)
);