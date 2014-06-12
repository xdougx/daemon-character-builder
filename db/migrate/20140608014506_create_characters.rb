class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :player_id
      t.string :name
      t.integer :race_id
      t.integer :class_id
      t.string :profession
      t.integer :gold
      t.string :silver
      t.string :cooper
      t.integer :experience
      t.integer :level
      t.integer :health_points
      t.integer :index_protection
      t.integer :hero_points
      t.integer :magic_points
      t.integer :focus_points
      t.integer :magical_aptitude
      t.integer :load
      t.integer :lifting
      t.integer :speed
      t.integer :power_bonus

      t.timestamps
    end
  end
end
