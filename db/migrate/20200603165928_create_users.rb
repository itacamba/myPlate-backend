class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :cover_img, default: "https://user-images.githubusercontent.com/194400/49531010-48dad180-f8b1-11e8-8d89-1e61320e1d82.png"
      t.string :img, default: "https://voxpopulii.in/system/static/dashboard/img/default_user.png"
      t.text :about
      t.boolean :is_chef, default: false

      t.timestamps
    end
  end
end
