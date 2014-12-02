class AddCostToInjuryAndImprovement < ActiveRecord::Migration
  def change
  	add_column :injuries, :cost, :integer
  	add_column :improvements, :cost, :integer
  end
end
