  class CreateSections < ActiveRecord::Migration[6.1]
  def change
    create_table :sections do |t|

      t.timestamps
    end
  end
end
