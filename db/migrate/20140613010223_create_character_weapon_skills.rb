class CreateCharacterWeaponSkills < ActiveRecord::Migration
  def change
    create_table :character_weapon_skills do |t|
      t.integer :atack_skill_points
      t.integer :defence_skill_points
      t.integer :bonus
      t.integer :player_id
      t.integer :weapon_skill_id

      t.timestamps
    end
  end
end
