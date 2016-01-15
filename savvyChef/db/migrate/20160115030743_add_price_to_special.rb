class AddPriceToSpecial < ActiveRecord::Migration
  def change
    add_column :specials, :price, :decimal
  end
end
