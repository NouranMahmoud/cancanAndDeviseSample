class DropPermission < ActiveRecord::Migration
  def change
	drop_table :Permissions
  end
end
