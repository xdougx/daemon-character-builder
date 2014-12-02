class CreateInjuries < ActiveRecord::Migration
  def change
    create_table :injuries do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
