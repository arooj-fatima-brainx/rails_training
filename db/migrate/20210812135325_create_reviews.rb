class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :body
      t.integer :rating
      t.integer :state
      t.belongs_to :book
      t.belongs_to :customer
      t.timestamps
    end
  end
end
