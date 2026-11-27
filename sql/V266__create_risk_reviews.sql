CREATE TABLE IF NOT EXISTS public.risk_reviews (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    risk_id integer NOT NULL,
 
    review_status text NOT NULL,
 
    review_notes text,
 
    created_at timestamp NOT NULL DEFAULT now(),
 
    CONSTRAINT risk_reviews_pk
        PRIMARY KEY (id),
 
    CONSTRAINT risk_reviews_risk_fk
        FOREIGN KEY (risk_id)
        REFERENCES risk_register(id)
 
);