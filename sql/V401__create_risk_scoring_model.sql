CREATE TABLE IF NOT EXISTS public.risk_scoring_model (
    id integer GENERATED ALWAYS AS IDENTITY,
    risk_id integer NOT NULL,
    likelihood_score integer NOT NULL,
    impact_score integer NOT NULL,
    risk_score integer NOT NULL,
    risk_rating text NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT risk_scoring_model_pk PRIMARY KEY (id),
    CONSTRAINT risk_scoring_model_risk_fk
        FOREIGN KEY (risk_id)
        REFERENCES risk_register(id)
);