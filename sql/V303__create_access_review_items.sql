CREATE TABLE IF NOT EXISTS public.access_review_items (
    id integer GENERATED ALWAYS AS IDENTITY,
    campaign_id integer NOT NULL,
    user_id integer NOT NULL,
    review_status text NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT access_review_items_pk
        PRIMARY KEY (id),
    CONSTRAINT access_review_items_campaign_fk
        FOREIGN KEY (campaign_id)
        REFERENCES access_review_campaigns(id),
    CONSTRAINT access_review_items_user_fk
        FOREIGN KEY (user_id)
        REFERENCES users(id)
);