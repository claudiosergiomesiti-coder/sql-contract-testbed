CREATE TABLE IF NOT EXISTS public.users (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    username text NOT NULL,
 
    email text NOT NULL,
 
    role_id integer NOT NULL,
 
    created_at timestamp NOT NULL DEFAULT now(),
 
    CONSTRAINT users_pk
        PRIMARY KEY (id),
 
    CONSTRAINT users_role_fk
        FOREIGN KEY (role_id)
        REFERENCES roles(id)
 
);