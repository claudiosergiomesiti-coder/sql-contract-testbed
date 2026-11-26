CREATE TABLE IF NOT EXISTS public.user_permissions (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    user_id integer NOT NULL,
 
    permission_id integer NOT NULL,
 
    created_at timestamp NOT NULL DEFAULT now(),
 
    CONSTRAINT user_permissions_pk
        PRIMARY KEY (id),
 
    CONSTRAINT user_permissions_user_fk
        FOREIGN KEY (user_id)
        REFERENCES users(id),
 
    CONSTRAINT user_permissions_permission_fk
        FOREIGN KEY (permission_id)
        REFERENCES permissions(id)
 
);