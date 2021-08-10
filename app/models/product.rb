class Product < ApplicationRecord
  self.table_name = "my_products" #to overrirde table name
  self.primary_key = "product_id" #to overrirde primary key name
end
