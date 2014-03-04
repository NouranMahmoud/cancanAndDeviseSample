class DropRole < ActiveRecord::Migration
  def change
	drop_table :Roles
  end
end
