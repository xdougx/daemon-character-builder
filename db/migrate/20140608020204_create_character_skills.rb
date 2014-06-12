class CreateCharacterSkills < ActiveRecord::Migration
  def change
    create_table :character_skills do |t|
      t.integer :skill_points
      t.integer :bonus
      t.integer :player_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
