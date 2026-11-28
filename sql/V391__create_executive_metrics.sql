CREATE TABLE IF NOT EXISTS public.executive_metrics (
    id integer GENERATED ALWAYS AS IDENTITY,
    metric_name text NOT NULL,
    metric_value numeric NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT executive_metrics_pk PRIMARY KEY (id)
);