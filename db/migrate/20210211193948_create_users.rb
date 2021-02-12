class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :username, null: false
      t.string :firstname, null: false
      t.string :lastname, null:false
      t.string :password_digest
      t.string :bio, null: true
      t.string :socialmedia, null: true

      t.timestamps
    end
  end
end
