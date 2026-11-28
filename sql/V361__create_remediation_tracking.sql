CREATE TABLE IF NOT EXISTS public.remediation_tracking (
    id integer GENERATED ALWAYS AS IDENTITY,
    task_id integer NOT NULL,
    tracking_status text NOT NULL,
    progress_percent integer NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT remediation_tracking_pk PRIMARY KEY (id),
    CONSTRAINT remediation_tracking_task_fk
        FOREIGN KEY (task_id)
        REFERENCES remediation_tasks(id)
);