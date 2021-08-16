class CreateLineItems < ActiveRecord::Migration[6.1]
  def change
    create_table :line_items do |t|
      t.string :name
      t.belongs_to :order
      t.timestamps
    end
  end
end
