class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.string :name
      t.integer :base
      t.integer :modifier
      t.integer :bonus
      t.integer :character_id

      t.timestamps
    end
  end
end
