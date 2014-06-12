class CreateCharacterImprovements < ActiveRecord::Migration
  def change
    create_table :character_improvements do |t|
      t.integer :character_id
      t.integer :improvement_id

      t.timestamps
    end
  end
end
