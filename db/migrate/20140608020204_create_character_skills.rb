class CreateCharacterSkills < ActiveRecord::Migration
  def change
    create_table :character_skills do |t|
      t.integer :skill_points
      t.integer :bonus
      t.integer :skill_id
      t.integer :character_id

      t.timestamps
    end
  end
end
