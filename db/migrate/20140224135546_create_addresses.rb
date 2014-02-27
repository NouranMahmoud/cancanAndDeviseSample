class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :city
      t.string :community
      t.string :subcommunity
      t.string :subtype

      t.timestamps
    end
  end
end
