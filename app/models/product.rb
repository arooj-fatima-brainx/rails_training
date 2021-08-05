class Product < ApplicationRecord
    self.table_name = "my_products"
    self.primary_key = "product_id" #to overrirde primary key name
    
    validates :legacy_code, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
    # This helper validates the attributes' values by testing whether they match a given regular expression, which is specified using the :with option.
    
end
# CREATE TABLE products ( id int(11) NOT NULL auto_increment, name varchar(255), PRIMARY KEY  (id) );