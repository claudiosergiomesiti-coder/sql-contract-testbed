CREATE TABLE IF NOT EXISTS public.executive_kpi_model (
    id integer GENERATED ALWAYS AS IDENTITY,
    kpi_name text NOT NULL,
    kpi_value numeric NOT NULL,
    kpi_status text NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT executive_kpi_model_pk PRIMARY KEY (id)
);