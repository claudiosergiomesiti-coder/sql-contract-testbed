ALTER TABLE customers
ADD CONSTRAINT customers_email_uq
UNIQUE (email);