class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    suppress_messages do
      create_table :my_products do |t|
        t.integer :product_id
        t.string :name
        t.integer :price
        t.string :legacy_code
        t.string :supplier_type

        t.timestamps
      end
    end
    say "Created a table"

    suppress_messages {add_index :my_products, :name}
    say "and an index!", true

    say_with_time 'Waiting for a while' do
      sleep 10
      250
    end
  end
end
