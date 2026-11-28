CREATE TABLE IF NOT EXISTS public.audit_readiness_model (
    id integer GENERATED ALWAYS AS IDENTITY,
    audit_area text NOT NULL,
    readiness_score numeric NOT NULL,
    readiness_rating text NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT audit_readiness_model_pk PRIMARY KEY (id)
);