CREATE TABLE IF NOT EXISTS public.sod_rules (
    id integer GENERATED ALWAYS AS IDENTITY,
    rule_name text NOT NULL,
    first_role text NOT NULL,
    second_role text NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT sod_rules_pk PRIMARY KEY (id)
);