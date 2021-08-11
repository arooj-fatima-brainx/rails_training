class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.datetime :published_at
       # t.references :author, null: false, foreign_key: true      orrr
      t.belongs_to :author, foreign_key: true
      t.timestamps
    end
  end
end