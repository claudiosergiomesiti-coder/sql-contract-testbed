CREATE TABLE IF NOT EXISTS public.remediation_plans (
    id integer GENERATED ALWAYS AS IDENTITY,
    finding_id integer NOT NULL,
    plan_name text NOT NULL,
    plan_status text NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT remediation_plans_pk PRIMARY KEY (id),
    CONSTRAINT remediation_plans_finding_fk
        FOREIGN KEY (finding_id)
        REFERENCES audit_findings(id)
);