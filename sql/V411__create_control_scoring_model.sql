CREATE TABLE IF NOT EXISTS public.control_scoring_model (
    id integer GENERATED ALWAYS AS IDENTITY,
    control_id integer NOT NULL,
    effectiveness_score integer NOT NULL,
    effectiveness_rating text NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT control_scoring_model_pk PRIMARY KEY (id),
    CONSTRAINT control_scoring_model_control_fk
        FOREIGN KEY (control_id)
        REFERENCES security_controls(id)
);