class AddPartNumberToMyProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :my_products, :part_number, :string
    add_index :my_products, :part_number
  end
end
