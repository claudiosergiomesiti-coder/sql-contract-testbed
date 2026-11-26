CREATE TABLE IF NOT EXISTS public.sessions (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    user_id integer NOT NULL,
 
    session_token text NOT NULL,
 
    created_at timestamp NOT NULL DEFAULT now(),
 
    expires_at timestamp NOT NULL,
 
    CONSTRAINT sessions_pk
        PRIMARY KEY (id),
 
    CONSTRAINT sessions_user_fk
        FOREIGN KEY (user_id)
        REFERENCES users(id)
 
);