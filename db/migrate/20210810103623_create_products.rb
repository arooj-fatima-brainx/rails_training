class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :my_products do |t|
      t.integer :product_id
      t.string :name
      t.integer :price
      t.string :legacy_code
      t.string :supplier_type

      t.timestamps
    end
  end
end
