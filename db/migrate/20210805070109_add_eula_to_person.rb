class AddEulaToPerson < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :eula, :string
  end
end
