class Item < ActiveRecord::Base
	
	has_one :address, dependent: :destroy
	belongs_to :user
	before_create :default_values
	private
	def default_values
    	 self.removed = false

    	 nil
    end
end
