class Item < ActiveRecord::Base
	before_create :default_values
	has_one :address, dependent: :destroy
	belongs_to :user
	private
	def default_values
    	 self.removed = false

    	 nil
    end
end
