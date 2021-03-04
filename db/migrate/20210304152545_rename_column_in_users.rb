class RenameColumnInUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :bio, :description
    rename_column :users, :firstname, :name
  end
end
