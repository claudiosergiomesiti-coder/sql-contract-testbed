CREATE TABLE IF NOT EXISTS public.policy_exceptions (
    id integer GENERATED ALWAYS AS IDENTITY,
    policy_id integer NOT NULL,
    exception_status text NOT NULL,
    exception_reason text,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT policy_exceptions_pk PRIMARY KEY (id),
    CONSTRAINT policy_exceptions_policy_fk
        FOREIGN KEY (policy_id)
        REFERENCES security_policies(id)
);