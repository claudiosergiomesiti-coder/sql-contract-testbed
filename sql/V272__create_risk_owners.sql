CREATE TABLE IF NOT EXISTS public.risk_owners (
    id integer GENERATED ALWAYS AS IDENTITY,
    risk_id integer NOT NULL,
    owner_name text NOT NULL,
    owner_email text,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT risk_owners_pk PRIMARY KEY (id),
    CONSTRAINT risk_owners_risk_fk
        FOREIGN KEY (risk_id)
        REFERENCES risk_register(id)
);