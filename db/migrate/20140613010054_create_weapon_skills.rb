class CreateWeaponSkills < ActiveRecord::Migration
  def change
    create_table :weapon_skills do |t|
      t.string :name
      t.string :based_attribute

      t.timestamps
    end
  end
end
