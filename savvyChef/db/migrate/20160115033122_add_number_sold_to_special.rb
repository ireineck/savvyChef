class AddNumberSoldToSpecial < ActiveRecord::Migration
  def change
    add_column :specials, :numberSold, :integer
  end
end
