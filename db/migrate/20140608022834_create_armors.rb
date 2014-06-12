class CreateArmors < ActiveRecord::Migration
  def change
    create_table :armors do |t|
      t.string :name
      t.string :penality
      t.integer :weight
      t.integer :index_protection

      t.timestamps
    end
  end
end
