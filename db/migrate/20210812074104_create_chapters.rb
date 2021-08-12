class CreateChapters < ActiveRecord::Migration[6.1]
  def change
    create_table :chapters do |t|
      t.string :name
      t.belongs_to :books
      t.timestamps
    end
  end
end

