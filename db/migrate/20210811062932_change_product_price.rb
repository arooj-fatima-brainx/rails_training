class ChangeProductPrice < ActiveRecord::Migration[6.1]
  # def change
  #   def change
  #     reversible do |dir|
  #       change_table :my_products do |t|
  #         dir.up   { t.change :price, :string }
  #         dir.down { t.change :price, :integer }
  #       end
  #     end
  #   end
  # end   orrrr

  def up
    change_table :my_products do |t|
      t.change :price, :string
    end
  end

  def down
    change_table :my_products do |t|
      t.change :price, :integer
    end
  end
end
