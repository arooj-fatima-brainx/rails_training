class RemovePartNumberFromMyProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :my_products, :part_number, :string
  end
end
