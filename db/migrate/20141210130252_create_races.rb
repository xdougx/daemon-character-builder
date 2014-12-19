class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :name
      t.text :description
      t.integer :cost
      t.string :attrs
      t.string :age
      t.text :improvements
      t.text :injuries

      t.timestamps
    end
  end
end
