CREATE TABLE IF NOT EXISTS public.dashboard_snapshots (
    id integer GENERATED ALWAYS AS IDENTITY,
    snapshot_name text NOT NULL,
    snapshot_status text NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT dashboard_snapshots_pk PRIMARY KEY (id)
);