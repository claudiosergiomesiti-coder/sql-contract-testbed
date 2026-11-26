CREATE TABLE IF NOT EXISTS public.login_events (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    user_id integer NOT NULL,
 
    event_type text NOT NULL,
 
    created_at timestamp NOT NULL DEFAULT now(),
 
    CONSTRAINT login_events_pk
        PRIMARY KEY (id),
 
    CONSTRAINT login_events_user_fk
        FOREIGN KEY (user_id)
        REFERENCES users(id)
 
);