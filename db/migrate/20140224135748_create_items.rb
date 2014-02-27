class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :listingtype
      t.integer :price
      t.string :purpose
      t.integer :area
      t.string :description

      t.timestamps
    end
  end
end
