CREATE TABLE IF NOT EXISTS public.security_policies (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    policy_name text NOT NULL,
 
    policy_status text NOT NULL,
 
    created_at timestamp NOT NULL DEFAULT now(),
 
    CONSTRAINT security_policies_pk
        PRIMARY KEY (id)
 
);
