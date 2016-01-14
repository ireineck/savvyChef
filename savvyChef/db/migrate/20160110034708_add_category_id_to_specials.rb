class AddCategoryIdToSpecials < ActiveRecord::Migration
  def change
    add_reference :specials, :category, index: true, foreign_key: true
  end
end
