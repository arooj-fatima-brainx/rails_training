class AddChangesToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :title, :string
    add_column :books, :year_published, :integer
    add_column :books, :isbn, :string
    add_column :books, :price, :decimal
    add_column :books, :out_of_print, :boolean
    add_column :books, :views, :integer


    change_table :books do |t|
      t.belongs_to :supplier
    end
  end
end
