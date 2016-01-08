class CreateSpecials < ActiveRecord::Migration
  def change
    create_table :specials do |t|
      t.string :title
      t.text :ingredients
      t.text :instructions

      t.timestamps null: false
    end
  end
end
