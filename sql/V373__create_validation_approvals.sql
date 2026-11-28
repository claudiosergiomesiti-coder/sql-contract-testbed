CREATE TABLE IF NOT EXISTS public.validation_approvals (
    id integer GENERATED ALWAYS AS IDENTITY,
    validation_id integer NOT NULL,
    approval_status text NOT NULL,
    approver_name text NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT validation_approvals_pk PRIMARY KEY (id),
    CONSTRAINT validation_approvals_validation_fk
        FOREIGN KEY (validation_id)
        REFERENCES closure_validations(id)
);