class Remove < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :socialmedia
  end
end
