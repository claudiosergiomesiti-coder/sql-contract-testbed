CREATE TABLE IF NOT EXISTS public.finding_remediations (
    id integer GENERATED ALWAYS AS IDENTITY,
    finding_id integer NOT NULL,
    remediation_status text NOT NULL,
    remediation_owner text NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT finding_remediations_pk PRIMARY KEY (id),
    CONSTRAINT finding_remediations_finding_fk
        FOREIGN KEY (finding_id)
        REFERENCES audit_findings(id)
);