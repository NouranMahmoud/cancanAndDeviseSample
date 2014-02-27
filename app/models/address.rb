class Address < ActiveRecord::Base
	 belongs_to :item , foreign_key: 'item_id'#, primary_key: :id

end
