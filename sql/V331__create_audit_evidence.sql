CREATE TABLE IF NOT EXISTS public.audit_evidence (
    id integer GENERATED ALWAYS AS IDENTITY,
    evidence_name text NOT NULL,
    evidence_type text NOT NULL,
    evidence_status text NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT audit_evidence_pk PRIMARY KEY (id)
);