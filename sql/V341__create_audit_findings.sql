CREATE TABLE IF NOT EXISTS public.audit_findings (
    id integer GENERATED ALWAYS AS IDENTITY,
    finding_title text NOT NULL,
    finding_severity text NOT NULL,
    finding_status text NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT audit_findings_pk PRIMARY KEY (id)
);