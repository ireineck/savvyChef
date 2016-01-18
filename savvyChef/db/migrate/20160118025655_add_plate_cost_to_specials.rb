class AddPlateCostToSpecials < ActiveRecord::Migration
  def change
    add_column :specials, :plate_cost, :decimal
  end
end
