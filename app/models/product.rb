class Product < ApplicationRecord
  # validates :legacy_code, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  self.table_name = "my_products" #to overrirde table name
  self.primary_key = "product_id" #to overrirde primary key name
  has_many :pictures, as: :imageable, dependent: :destroy
end
