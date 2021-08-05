class AddLegacyCodeToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :legacy_code, :string
  end
end
