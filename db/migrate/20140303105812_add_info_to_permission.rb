class AddInfoToPermission < ActiveRecord::Migration
  def change
    add_column :permissions, :name, :string
    add_column :permissions, :description, :text
  end
end
