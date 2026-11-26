ALTER TABLE products
 
ADD COLUMN category_id integer;
 
ALTER TABLE products
 
ADD CONSTRAINT products_category_fk
 
FOREIGN KEY (category_id)
 
REFERENCES categories(id);