CREATE TABLE IF NOT EXISTS public.audit_readiness (
    id integer GENERATED ALWAYS AS IDENTITY,
    readiness_name text NOT NULL,
    readiness_status text NOT NULL,
    readiness_score integer NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT audit_readiness_pk PRIMARY KEY (id)
);