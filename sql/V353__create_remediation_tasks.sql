CREATE TABLE IF NOT EXISTS public.remediation_tasks (
    id integer GENERATED ALWAYS AS IDENTITY,
    plan_id integer NOT NULL,
    task_name text NOT NULL,
    task_status text NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT remediation_tasks_pk PRIMARY KEY (id),
    CONSTRAINT remediation_tasks_plan_fk
        FOREIGN KEY (plan_id)
        REFERENCES remediation_plans(id)
);