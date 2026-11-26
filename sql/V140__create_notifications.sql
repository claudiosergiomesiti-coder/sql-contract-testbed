CREATE TABLE IF NOT EXISTS public.notifications (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    message text NOT NULL,
 
    status text NOT NULL DEFAULT 'PENDING',
 
    created_at timestamp NOT NULL DEFAULT now(),
 
    CONSTRAINT notifications_pk
        PRIMARY KEY (id)
 
);