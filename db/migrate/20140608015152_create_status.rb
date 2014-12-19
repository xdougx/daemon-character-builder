class CreateStatus < ActiveRecord::Migration
  def change
    create_table :status do |t|
      t.integer :strength
      t.integer :constitution
      t.integer :dexterity
      t.integer :agility
      t.integer :inteligence
      t.integer :willpower
      t.integer :perception
      t.integer :charisma
      t.integer :strength_bonus, default: 0
      t.integer :constitution_bonus, default: 0
      t.integer :dexterity_bonus, default: 0
      t.integer :agility_bonus, default: 0
      t.integer :inteligence_bonus, default: 0
      t.integer :willpower_bonus, default: 0
      t.integer :perception_bonus, default: 0
      t.integer :charisma_bonus, default: 0

      t.integer :character_id
      t.timestamps
    end
  end
end
