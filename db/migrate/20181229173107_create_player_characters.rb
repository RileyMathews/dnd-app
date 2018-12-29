class CreatePlayerCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :player_characters do |t|
      t.string :name
      t.integer :level
      t.integer :max_health
      t.integer :current_health

      t.timestamps
    end
  end
end
