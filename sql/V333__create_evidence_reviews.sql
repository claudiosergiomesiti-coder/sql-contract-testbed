CREATE TABLE IF NOT EXISTS public.evidence_reviews (
    id integer GENERATED ALWAYS AS IDENTITY,
    evidence_id integer NOT NULL,
    review_status text NOT NULL,
    reviewer_name text NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT evidence_reviews_pk PRIMARY KEY (id),
    CONSTRAINT evidence_reviews_evidence_fk
        FOREIGN KEY (evidence_id)
        REFERENCES audit_evidence(id)
);