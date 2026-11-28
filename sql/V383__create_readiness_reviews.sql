CREATE TABLE IF NOT EXISTS public.readiness_reviews (
    id integer GENERATED ALWAYS AS IDENTITY,
    readiness_id integer NOT NULL,
    review_status text NOT NULL,
    reviewer_name text NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT readiness_reviews_pk PRIMARY KEY (id),
    CONSTRAINT readiness_reviews_readiness_fk
        FOREIGN KEY (readiness_id)
        REFERENCES audit_readiness(id)
);