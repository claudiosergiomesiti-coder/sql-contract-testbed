CREATE TABLE IF NOT EXISTS public.access_review_campaigns (
    id integer GENERATED ALWAYS AS IDENTITY,
    campaign_name text NOT NULL,
    campaign_status text NOT NULL,
    start_date date NOT NULL,
    due_date date NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT access_review_campaigns_pk
        PRIMARY KEY (id)
);