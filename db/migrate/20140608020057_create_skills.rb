class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.string :based_attribute

      t.timestamps
    end
  end
end
