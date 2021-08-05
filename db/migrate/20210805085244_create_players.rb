class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.integer :points
      t.text :games_played

      t.timestamps
    end
  end
end
