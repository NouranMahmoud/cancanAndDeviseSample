class AddForeignKeyToAddress < ActiveRecord::Migration
  def change
  	add_foreign_key :items, :addresses
  end
end
