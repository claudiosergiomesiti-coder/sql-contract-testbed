CREATE TABLE IF NOT EXISTS public.closure_validations (
    id integer GENERATED ALWAYS AS IDENTITY,
    closure_id integer NOT NULL,
    validation_status text NOT NULL,
    validator_name text NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT closure_validations_pk PRIMARY KEY (id),
    CONSTRAINT closure_validations_closure_fk
        FOREIGN KEY (closure_id)
        REFERENCES remediation_closures(id)
);