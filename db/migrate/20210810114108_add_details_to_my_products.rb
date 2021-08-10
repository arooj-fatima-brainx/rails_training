class AddDetailsToMyProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :my_products, :part_number, :string
    # add_reference :my_products, :supplier, polymorphic: true
  end
end
