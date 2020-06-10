class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :party_size
      t.date :date
      t.string :ocassion
      t.integer :chef_id
      t.integer :customer_id
      t.boolean :isApproved, default: nil
      t.string :dish_name
     
    end
  end
end
