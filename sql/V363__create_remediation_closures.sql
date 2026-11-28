CREATE TABLE IF NOT EXISTS public.remediation_closures (
    id integer GENERATED ALWAYS AS IDENTITY,
    tracking_id integer NOT NULL,
    closure_status text NOT NULL,
    closure_notes text,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT remediation_closures_pk PRIMARY KEY (id),
    CONSTRAINT remediation_closures_tracking_fk
        FOREIGN KEY (tracking_id)
        REFERENCES remediation_tracking(id)
);