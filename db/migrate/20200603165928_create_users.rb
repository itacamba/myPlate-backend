class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :img, default: "https://voxpopulii.in/system/static/dashboard/img/default_user.png"
      t.text :about
      t.boolean :is_chef, default: false

      t.timestamps
    end
  end
end
