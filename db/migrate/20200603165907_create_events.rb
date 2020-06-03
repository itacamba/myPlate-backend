class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :party_size
      t.date :date
      t.string :occasion
      t.integer :chef_id
      t.integer :customer_id
      t.boolean :isApproved, default: false

      t.timestamps
    end
  end
end
