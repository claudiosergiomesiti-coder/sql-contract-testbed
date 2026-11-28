CREATE TABLE IF NOT EXISTS public.compliance_scoring_model (
    id integer GENERATED ALWAYS AS IDENTITY,
    policy_id integer NOT NULL,
    compliance_score numeric NOT NULL,
    compliance_rating text NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT compliance_scoring_model_pk PRIMARY KEY (id),
    CONSTRAINT compliance_scoring_model_policy_fk
        FOREIGN KEY (policy_id)
        REFERENCES security_policies(id)
);