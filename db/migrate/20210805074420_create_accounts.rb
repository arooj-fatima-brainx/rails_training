class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :subdomain

      t.timestamps
    end
  end
end
