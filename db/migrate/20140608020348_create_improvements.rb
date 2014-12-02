class CreateImprovements < ActiveRecord::Migration
  def change
    create_table :improvements do |t|
      t.string :name
      t.text :description
      t.integer :cost
      t.timestamps
    end
  end
end
