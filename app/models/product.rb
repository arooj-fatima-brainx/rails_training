class Product < ApplicationRecord
    self.table_name = "my_products"
    self.primary_key = "product_id" #to overrirde primary key name
end
# CREATE TABLE products ( id int(11) NOT NULL auto_increment, name varchar(255), PRIMARY KEY  (id) );