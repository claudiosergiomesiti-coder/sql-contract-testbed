CREATE TABLE IF NOT EXISTS public.mfa_methods (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    user_id integer NOT NULL,
 
    method_type text NOT NULL,
 
    is_enabled boolean NOT NULL DEFAULT true,
 
    created_at timestamp NOT NULL DEFAULT now(),
 
    CONSTRAINT mfa_methods_pk
        PRIMARY KEY (id),
 
    CONSTRAINT mfa_methods_user_fk
        FOREIGN KEY (user_id)
        REFERENCES users(id)
 
);
 