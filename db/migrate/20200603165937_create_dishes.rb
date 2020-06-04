class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :cuisine
      t.string :img, default: "https://cdn2.iconfinder.com/data/icons/food-restaurant-1/128/flat-15-512.png"
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
