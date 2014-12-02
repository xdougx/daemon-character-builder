class CreateAttributes < ActiveRecord::Migration
  def change
      t.integer :strength
      t.integer :constitution
      t.integer :dexterity
      t.integer :agility
      t.integer :inteligence
      t.integer :willpower
      t.integer :perception
      t.integer :charisma
      t.integer :strength_bonus
      t.integer :constitution_bonus
      t.integer :dexterity_bonus
      t.integer :agility_bonus
      t.integer :inteligence_bonus
      t.integer :willpower_bonus
      t.integer :perception_bonus
      t.integer :charisma_bonus

      t.integer :character_id
      t.timestamps
    end
  end
end
