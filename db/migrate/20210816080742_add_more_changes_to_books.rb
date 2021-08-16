class AddMoreChangesToBooks < ActiveRecord::Migration[6.1]
  def change
    change_table :books do |t|
      t.belongs_to :library
    end
  end
end
