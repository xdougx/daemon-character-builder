class CreateMagics < ActiveRecord::Migration
  def change
    create_table :magics do |t|
      t.integer :know
      t.integer :make
      t.integer :handle
      t.integer :fire
      t.integer :water
      t.integer :earth
      t.integer :air
      t.integer :light
      t.integer :dark
      t.integer :plants
      t.integer :animals
      t.integer :human
      t.integer :dead
      t.integer :extra_planar
      t.integer :meta_magic
      t.integer :character_id

      t.timestamps
    end
  end
end
