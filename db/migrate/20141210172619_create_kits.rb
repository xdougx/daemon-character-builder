class CreateKits < ActiveRecord::Migration
  def change
    create_table :kits do |t|
      t.string :name
      t.string :cost
      t.string :skill_points_cost
      t.string :hero_points
      t.string :faith_points
      t.string :restrictions
      t.text :skills
      t.string :improvements
      t.string :magic_points
      t.text :magic_path
      t.text :special

      t.timestamps
    end
  end
end
