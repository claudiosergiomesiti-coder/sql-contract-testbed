CREATE TABLE IF NOT EXISTS public.control_effectiveness (
    id integer GENERATED ALWAYS AS IDENTITY,
    control_id integer NOT NULL,
    effectiveness_status text NOT NULL,
    effectiveness_score integer NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT control_effectiveness_pk PRIMARY KEY (id),
    CONSTRAINT control_effectiveness_control_fk
        FOREIGN KEY (control_id)
        REFERENCES security_controls(id)
);