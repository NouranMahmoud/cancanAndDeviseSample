class DashboardController < ApplicationController
	before_filter :authenticate_user!
	#current_user
	def index
		#@item = current_user.items
		#redirect_to :controller => 'dashboard', :action => 'show'
	end
	def show
		#redirect_to :controller => 'item', :action => 'index'
		
	end
end
