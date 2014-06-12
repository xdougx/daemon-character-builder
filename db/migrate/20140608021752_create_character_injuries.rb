class CreateCharacterInjuries < ActiveRecord::Migration
  def change
    create_table :character_injuries do |t|
      t.integer :character_id
      t.integer :injury_id

      t.timestamps
    end
  end
end
