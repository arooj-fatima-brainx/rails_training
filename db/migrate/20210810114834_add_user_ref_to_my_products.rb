class AddUserRefToMyProducts < ActiveRecord::Migration[6.1]
  def change
    add_reference :my_products, :user, foreign_key: true
  end
end
