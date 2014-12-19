class CreateImprovements < ActiveRecord::Migration
  def change
    create_table :improvements do |t|
      t.string :name
      t.integer :cost
      t.text :description
      t.timestamps
    end
  end
end
