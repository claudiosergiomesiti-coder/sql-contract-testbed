CREATE TABLE IF NOT EXISTS public.security_metrics (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    metric_name text NOT NULL,
 
    metric_value integer NOT NULL,
 
    created_at timestamp NOT NULL DEFAULT now(),
 
    CONSTRAINT security_metrics_pk
        PRIMARY KEY (id)
 
);